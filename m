Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C07B535101
	for <lists+intel-gfx@lfdr.de>; Thu, 26 May 2022 16:48:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B42B210E11D;
	Thu, 26 May 2022 14:48:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36D4810E6D3
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 May 2022 14:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653576515; x=1685112515;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=59sG+au/kf/Yea4ZTTr4OQcLvL1rATfYYOl68lCLmsU=;
 b=PjD2YT47u2ELjXyR08Yx4z8BR71gyY00eQRkgk+VBSBPEsf1PInkx6xo
 oIl3e6MjCW59glGLXW85TzFToyjeEimImrSQpR6UVmuP+rREGFa4z6w0u
 RHRXI4MdRdxQ2U5j74l2mLojHTzfyhRg+qtTroMRioxu5CnN27pGgBB1q
 Y1yYK3h7f2Q7R5UN94rwU/iE/X62RgqLDxKkqEzaxy5174Xqxj+Lewod2
 FK8ov8gyJFXVte+ipPpbpIse8k9LOQXMDdwQnDyb9LImCPa7wIoe30/I5
 fwzeq2WPn/Um53hGoxtreTYkQk3ew6pexe4WUhnU1iDD6fK7csicyS0/a w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10359"; a="274181360"
X-IronPort-AV: E=Sophos;i="5.91,252,1647327600"; d="scan'208";a="274181360"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2022 07:48:34 -0700
X-IronPort-AV: E=Sophos;i="5.91,252,1647327600"; d="scan'208";a="603125020"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.26.62])
 ([10.213.26.62])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2022 07:48:33 -0700
Message-ID: <162c3c4f-00df-6d72-9e87-8c2b34cdeab1@intel.com>
Date: Thu, 26 May 2022 16:48:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.9.1
Content-Language: en-US
To: Vivek Kasireddy <vivek.kasireddy@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220526001939.4031112-1-vivek.kasireddy@intel.com>
 <20220526001939.4031112-2-vivek.kasireddy@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20220526001939.4031112-2-vivek.kasireddy@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2 1/1] drm/i915/tc: Don't default
 disconnected legacy Type-C ports to TBT mode (v2)
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 26.05.2022 02:19, Vivek Kasireddy wrote:
> Commit 30e114ef4b16 ("drm/i915/tc: Check for DP-alt, legacy sinks before
> taking PHY ownership") defaults any disconnected Type-C ports to TBT-alt
> mode which presents a problem (which could most likely result in a system
> hang) when userspace forces a modeset on a Type-C port that is wired for
> legacy HDMI. The following warning is seen when Weston forces a modeset
> on a disconnected legacy Type-C port (HDMI) on a TGL based Gigabyte system:
> (https://www.gigabyte.com/Mini-PcBarebone/GB-BSi3-1115G4-rev-10#ov)
> 
> Missing case (clock == 173000)
> WARNING: CPU: 1 PID: 438 at drivers/gpu/drm/i915/display/intel_ddi.c:245
> icl_ddi_tc_enable_clock.cold+0x16a/0x1cf [i915]
> CPU: 1 PID: 438 Comm: kworker/u8:3 Tainted: G     U  W   E
> 5.18.0-rc5-drm-tip+ #20
> Hardware name: GIGABYTE GB-BSi3-1115G4/GB-BSi3-1115G4, BIOS F9
> 10/16/2021
> Workqueue: i915_modeset intel_atomic_commit_work [i915]
> RIP: 0010:icl_ddi_tc_enable_clock.cold+0x16a/0x1cf [i915]
> Code: 74 6c 7f 10 81 fd d0 78 02 00 74 6d 81 fd b0 1e 04 00 74 70 48 63
> d5 48 c7 c6 c0 7b ab c0 48 c7 c7 20 75 ab c0 e8 b8 b5 c1 f0 <0f> 0b 45
> 31 ed e9 fb fe ff ff 49 63 d5
>   48 c7 c6 80 7b ab c0 48 c7
> RSP: 0018:ffff8882522c78f0 EFLAGS: 00010282
> RAX: 0000000000000000 RBX: 0000000000000003 RCX: 0000000000000000
> RDX: 0000000000000027 RSI: 0000000000000004 RDI: ffffed104a458f10
> RBP: 0000000000011558 R08: ffffffffb078de4e R09: ffff888269ca748b
> R10: ffffed104d394e91 R11: 0000000000000000 R12: ffff888255a318f8
> R13: 0000000000000002 R14: ffff888255a30000 R15: ffff88823ef00348
> FS:  0000000000000000(0000) GS:ffff888269c80000(0000)
> knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 00007fd7afa42000 CR3: 0000000255c02004 CR4: 00000000007706e0
> PKRU: 55555554
> Call Trace:
> <TASK>
> intel_ddi_pre_enable.cold+0x96/0x5bf [i915]
> intel_encoders_pre_enable+0x10e/0x140 [i915]
> hsw_crtc_enable+0x207/0x99d [i915]
> ? ilk_crtc_enable.cold+0x2a/0x2a [i915]
> ? prepare_to_wait_exclusive+0x120/0x120
> intel_enable_crtc+0x9a/0xf0 [i915]
> skl_commit_modeset_enables+0x466/0x820 [i915]
> ? intel_commit_modeset_enables+0xd0/0xd0 [i915]
> ? intel_mbus_dbox_update+0x1ed/0x250 [i915]
> intel_atomic_commit_tail+0xf2d/0x3040 [i915]
> _raw_spin_lock_irqsave+0x87/0xe0
> _raw_read_unlock_irqrestore+0x40/0x40
> __update_load_avg_cfs_rq+0x70/0x5c0
> __i915_sw_fence_complete+0x85/0x3b0 [i915]
> ? intel_get_crtc_new_encoder+0x190/0x190 [i915]
> ? sysvec_irq_work+0x13/0x90
> ? asm_sysvec_irq_work+0x12/0x20
> ? _raw_spin_lock_irq+0x82/0xd0
> ? read_word_at_a_time+0xe/0x20
> ? process_one_work+0x393/0x690
> process_one_work+0x393/0x690
> worker_thread+0x2b7/0x620
> ? process_one_work+0x690/0x690
> kthread+0x15a/0x190
> ? kthread_complete_and_exit+0x20/0x20
> ret_from_fork+0x1f/0x30
> 
> Continuing with the modeset without setting the DDI clock results in
> more warnings and eventually a system hang. This does not seem to
> happen with disconnected legacy or DP-alt DP ports because the clock
> rate defaults to 162000 (which is a valid TBT clock) during the link
> training process. Therefore, to fix this issue, this patch avoids
> setting disconnected Type-C legacy ports to TBT-alt mode which prevents
> the selection of TBT PLL when a modeset is forced.
> 
> v2: (Imre)
> - Retain the check for legacy hotplug live status to account for
> incorrect VBTs.
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: José Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>

Looks sane.
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej


> ---
>   drivers/gpu/drm/i915/display/intel_tc.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index b8b822ea3755..6773840f6cc7 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -494,7 +494,8 @@ static void icl_tc_phy_connect(struct intel_digital_port *dig_port,
>   	}
>   
>   	live_status_mask = tc_port_live_status_mask(dig_port);
> -	if (!(live_status_mask & (BIT(TC_PORT_DP_ALT) | BIT(TC_PORT_LEGACY)))) {
> +	if (!(live_status_mask & (BIT(TC_PORT_DP_ALT) | BIT(TC_PORT_LEGACY))) &&
> +	    !dig_port->tc_legacy_port) {
>   		drm_dbg_kms(&i915->drm, "Port %s: PHY ownership not required (live status %02x)\n",
>   			    dig_port->tc_port_name, live_status_mask);
>   		goto out_set_tbt_alt_mode;

