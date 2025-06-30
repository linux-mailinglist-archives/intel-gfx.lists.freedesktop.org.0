Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4161AED7C3
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jun 2025 10:49:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4625E10E3C8;
	Mon, 30 Jun 2025 08:49:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 183FD10E3C7;
 Mon, 30 Jun 2025 08:49:44 +0000 (UTC)
Received: from [192.168.2.196] (p5dc55466.dip0.t-ipconnect.de [93.197.84.102])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 17BD061E64787;
 Mon, 30 Jun 2025 10:49:17 +0200 (CEST)
Message-ID: <16a1a6de-e2e2-4fed-9ca0-7bca50c7169c@molgen.mpg.de>
Date: Mon, 30 Jun 2025 10:49:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [Regression] Panel flickering on Dell XPS 13 9360 with
 drm-fixes-2025-06-28 merged (Linux 6.16-rc4)
To: Imre Deak <imre.deak@intel.com>
Cc: Jarkko Nikula <jarkko.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, LKML <linux-kernel@vger.kernel.org>,
 regressions@lists.linux.dev
References: <e8c595d4-716f-474c-99ae-c95a56e65d3d@molgen.mpg.de>
 <aGI_tO6btgJluwUu@ideak-desk>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <aGI_tO6btgJluwUu@ideak-desk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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

Dear Imre,


Thank you for your reply.


Am 30.06.25 um 09:41 schrieb Imre Deak:
> On Sun, Jun 29, 2025 at 11:04:31PM +0200, Paul Menzel wrote:

>> Just a heads-up, that very likely, merging of branch *drm-fixes-2025-06-28*
>> causes flickering of the panel of the Intel Kaby Lake laptop Dell XPS 13
>> 9360. 6.16.0-rc3 works fine, and with 6.16-rc3-00329-gdfba48a70cb6 the panel
>> flickers. I try to bisect, but maybe you already have an idea.
> 
> One possibility is:
> a3ef3c2da675 ("drm/dp: Change AUX DPCD probe address from DPCD_REV to LANE0_1_STATUS")

Yes, that is the one my bisection pinpointed.

> Could you open a ticket for this and provide a drm.debug=0x10e log with
> 6.16-rc4 and try if the following commits in drm-tip fixes the issue?:
> 
> 5281cbe0b55a ("drm/edid: Define the quirks in an enum list")
> 0b4aa85e8981 ("drm/edid: Add support for quirks visible to DRM core and drivers")
> b87ed522b364 ("drm/dp: Add an EDID quirk for the DPCD register access probe")
> ed3648b9ec4c ("drm/i915/dp: Disable the AUX DPCD probe quirk if it's not required")
> 
> I also pushed these to:
> https://github.com/ideak/linux/commits/dpcd-probe-quirk

I created issue *[Regression] Panel flickering on Dell XPS 13 9360 with 
drm-fixes-2025-06-28 merged (Linux 6.16-rc4)* [1], and will try your 
proposed fixes later.

[…]


Kind regards,

Paul


[1]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14558
