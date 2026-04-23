Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GI1DFxgD6mk/rQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 13:31:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E2C4514E2
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 13:31:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71B1810EE98;
	Thu, 23 Apr 2026 11:31:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=igalia.com header.i=@igalia.com header.b="Tn0zHu8c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A8B810EE98
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2026 11:31:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kzJCJBPLPr8MskvWd35Gy2nZeNtqoHqhfC+slMfPjgQ=; b=Tn0zHu8cd26wNWIObDazySASSy
 VQHDL2IHX+mHu/OFsZWDffIormWswvz08kit5PaEmS+Bt6ZelWlHrLsBLC9XfPZxAtrQ+/GJ3vT3Q
 tKSKvlkpUxZM9nFF6q0DStl782dttLzEFN9w41t8Qp4bvrPezycIhpUxquhw/lGCMSllfDUnp1bJb
 5o6+ktE44HK26JFTVOturQP6aSR/5qBrAwemzyXUUzZStaMWRWtlG/REnFwjy5EltgXoeEurwQyvE
 EM0hMwFx8tBSMEfgr/FJoI77td30tyv52xVWelxbzcaqUCq6YrXXHEAuaY27k2WnQ2e5udMcqaBZe
 8d6lZVEQ==;
Received: from [90.240.106.137] (helo=[192.168.0.101])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1wFsHK-0015Bz-UP; Thu, 23 Apr 2026 13:31:30 +0200
Message-ID: <2d76f8d9-bce7-4697-8bc6-d5d1b8dcdba0@igalia.com>
Date: Thu, 23 Apr 2026 12:31:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?Q?Re=3A_=E2=9C=93_i915=2ECI=2EFull=3A_success_for_drm/i915/?=
 =?UTF-8?Q?display=3A_Detect_AuxCCS_support_via_display_parent_interface_=28?=
 =?UTF-8?Q?rev2=29?=
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Tvrtko Ursulin <tursulin@igalia.com>
References: <20251209120034.9143-1-tursulin@igalia.com>
 <176537861842.74285.17574222990617448082@a3b018990fe9>
 <aen9IeS4tR5ZaWes@intel.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
In-Reply-To: <aen9IeS4tR5ZaWes@intel.com>
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
X-Spamd-Result: default: False [0.49 / 15.00];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:ville.syrjala@linux.intel.com,m:tursulin@igalia.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[tvrtko.ursulin@igalia.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.998];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tvrtko.ursulin@igalia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[igalia.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[igalia.com:mid,patchwork.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,01.org:url,pipe-a-hdmi-a-3:email,crc-primary-suspend-4-tiled-dg2-rc-ccs:email,crc-primary-rotation-180-4-tiled-dg2-rc-ccs:email,kms_ccs:email]
X-Rspamd-Queue-Id: E7E2C4514E2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 23/04/2026 12:06, Ville Syrjälä wrote:
> On Wed, Dec 10, 2025 at 02:56:58PM -0000, Patchwork wrote:
>> == Series Details ==
>>
>> Series: drm/i915/display: Detect AuxCCS support via display parent interface (rev2)
>> URL   : https://patchwork.freedesktop.org/series/158691/
>> State : success
>>
> <snip>
>>    * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-1:
>>      - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#6095]) +44 other tests skip
>>     [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158691v2/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-1.html
>>
>>    * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3:
>>      - shard-dg2:          [PASS][62] -> [SKIP][63] ([i915#6095]) +57 other tests skip
>>     [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17651/shard-dg2-8/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3.html
>>     [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158691v2/shard-dg2-6/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3.html
> 
> OK,so we did see the DG2 CCS regression already in pre-merge results.
> This should have been properly checked before pushing the series.

Hmm.. I possibly went by the overall success marker given those are 
marked as pre-existing and how noisy it was.

Regards,

Tvrtko

> 
> Sadly the black hole has eaten the results so I can't anymore check
> how bad the results page looked visually.
> 

