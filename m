Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ftw0IVRcD2oCJgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 21:26:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B645AB6C1
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 21:26:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2990110E1E9;
	Thu, 21 May 2026 19:26:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wx6uqMt4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FE2910E1E9;
 Thu, 21 May 2026 19:26:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779391569; x=1810927569;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=SsHtvxTpztaNOsLjc/7RUHto2SwGWLMrSh8erHOqqBA=;
 b=Wx6uqMt4iOOt/8eHI45AmTgtB0XkthCOwjer5KwN/rV9AqgN+vrjZI7Z
 vAeflTzyGrjX+/gtMR+yNoP7xGJgYAFfAHJLiNupV2u/+TYjZYqowWsAT
 iVX5ZeA9pb3hP12/7cJe1QfqJSVsyD/p01edvJXW96pqyURkvN0LEKiYb
 MhwkuGo76NJLFjcuDOYlAELKUs8rMDjupAGOMxo8o7EAnjAMbprMA6Stv
 IXevKZuJWQ8oZz9n/OljrDPGJMoGzcKRe8IWonjKbs38yczhg5e+JySW5
 Vk1AouUIFTqZz0dlNr96lf3dWVoiDyOLMJ9msIqnnlj2mukf2dUU5qlbI g==;
X-CSE-ConnectionGUID: hkmHScPmShapKIGEb3htAA==
X-CSE-MsgGUID: 7qqzb6tZSa+zjlMNgIksQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11793"; a="67841697"
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="67841697"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 12:26:08 -0700
X-CSE-ConnectionGUID: QETMUOy0TxaMcipZnkokXQ==
X-CSE-MsgGUID: ILoVOG03Q4ypSPhxsFPKbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="245602913"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.174])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 12:26:05 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Marco Nenciarini <mnencia@kcore.it>, Jakub Bystron <jb@elitecode.cz>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, Aaron
 Esau <aaron1esau@gmail.com>, Imre Deak <imre.deak@intel.com>, Mika Kahola
 <mika.kahola@intel.com>
Subject: Re: [BUG] xe: Meteor Lake 7d55 eDP PHY A/DPLL state mismatch,
 flip_done timeout
In-Reply-To: <ag9HiZKGsQcBRBot@spark.kcore.it>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <TDn3cEkpVu-dBI63qMzn4sYGIkclsctG5pYDF70-dxuekRCixI_FpRQmeJL6UjZH_MtI8PBkjEsJxc93SEV9OmQvlT_CCrD2-qDb8Ss8X-Q=@elitecode.cz>
 <ag9HiZKGsQcBRBot@spark.kcore.it>
Date: Thu, 21 May 2026 22:26:03 +0300
Message-ID: <fd9fb7205ddce152b54d9dbfe10606cc2289f412@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,gmail.com,intel.com];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 97B645AB6C1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 21 May 2026, Marco Nenciarini <mnencia@kcore.it> wrote:
> Cross-reference: Aaron Esau (Cc'd) posted a 3-patch series targeting
> this on intel-gfx@ on 2026-05-09 [1]. The series received pushback
> from Imre, Jani N, and Mika arguing for catching the failure pre-commit
> so the atomic_commit can fail cleanly at check time rather than
> mid-commit. The series is currently stalled. With Jakub's report,
> Aaron's report, and mine, the bug reproduces on at least three
> independent setups across i915 and xe, ARL-H and MTL, with and without
> an active NVIDIA driver.
>
> On the NVIDIA framing: Aaron's cover letter attributed the MSGBUS
> unresponsiveness to the NVIDIA dGPU not participating in S0ix
> (NVreg_EnableS0ixPowerManagement). That framing has two cracks. My
> reproduction has S0ix participation enabled AND NVIDIA runtime PM
> fully disabled (NVreg_DynamicPowerManagement=0x00, dGPU stays in D0
> since boot, never enters D3), yet the bug still fires. Jakub's setup
> has xe forcing the iGPU and no active NVIDIA driver in dmesg. So
> whatever platform-side condition causes the PHY to wedge, the NVIDIA
> module parameters are not the lever, and the bug occurs without an
> active NVIDIA driver. The fix has to be on the i915/xe side.

Looks like Jakub sent the same message twice. I replied to the other one
[1], with references to existing gitlab issues.

I'll reiterate that 1) any combo with an out-of-tree module loaded gets
no priority, 2) MTL/ARL with the xe driver doesn't get much priority,
and 3) the proposed series from Aaron is not viable.

That said, it does look like a regression with MTL/ARL and the i915
driver and without out-of-tree modules loaded, and we're looking into
it.


BR,
Jani.


[1] https://lore.kernel.org/r/fb38414a888f689b96135f65706c2125059e53ca@intel.com

-- 
Jani Nikula, Intel
