Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id COk1LpG382mW6QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 22:12:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DDB34A79D3
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 22:12:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADE4C10F452;
	Thu, 30 Apr 2026 20:11:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=igalia.com header.i=@igalia.com header.b="eay188Tr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5CBB10F452;
 Thu, 30 Apr 2026 20:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OoztPwYaHp+Yon61VHaHCnt91++Mnj/0rqKxJtMHmXA=; b=eay188Tr2ij4WKCQL9QEt7YtrP
 qUlIcqhUs+GxJ+kojGEwrY7cnoOI/CI9Eejn+UmHtyGFi0feF2wOKLAy9KtFdKoNpQotdnbhGQH4J
 Wm1I1ArVIOyaRUtKMLjeUt0giiFaGAETDgaL8InOBc403ZzykFUeHxMV9HNXxnEfARcQBU1Xz3D8f
 cZUQ6hDaiftP2aK7sUbeQc8aULSQ4KltP6u/rOaPXpTFDCH40coN3ekfcVnPL8XGKsRGmldipjTnI
 TA/FjtIA0QA2G4UqN5xprkiDPvH5OCSvJAVb6MQm9I0adENs5A3B5Abeyn8+VgBV9CBHd+2l8Wpe0
 JNH0eh7A==;
Received: from c-73-157-168-91.hsd1.or.comcast.net ([73.157.168.91]
 helo=[192.168.1.133]) by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1wIXjn-004a0I-N9; Thu, 30 Apr 2026 22:11:55 +0200
Message-ID: <f9a6f3d2-847b-407e-a744-a14346575581@Igalia.com>
Date: Thu, 30 Apr 2026 13:11:49 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 00/26] Enable Pipe writeback
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "S, Sowmiya" <sowmiya.s@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Sharma, Swati2" <swati2.sharma@intel.com>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "kernel-dev@igalia.com" <kernel-dev@igalia.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <6ceb624d-36ad-43a2-8635-ad2f50cc01f7@Igalia.com>
 <DM3PPF208195D8D07AFB5DBC81A0AA9540FE3352@DM3PPF208195D8D.namprd11.prod.outlook.com>
Content-Language: en-GB
From: John Harrison <John.Harrison@Igalia.com>
In-Reply-To: <DM3PPF208195D8D07AFB5DBC81A0AA9540FE3352@DM3PPF208195D8D.namprd11.prod.outlook.com>
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
X-Rspamd-Queue-Id: 2DDB34A79D3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.49 / 15.00];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[igalia.com:-];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[John.Harrison@Igalia.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email]

On 4/29/26 19:54, Kandpal, Suraj wrote:
>> On 3/25/26 04:07, Suraj Kandpal wrote:
>>> This series aims to enable pipe writeback functionality on ADLP where
>>> it has been tested. The plan is to slowly accomodate all supported
>>> hardware after this functionality is tested on them.
>>> This series currently sits on top of two series still under review in
>>> drm core. They are squashed as the first two patches of this series.
>>> This series enables the triggered captured mode where we need to
>>> trigger a capture.
>>>
>>> v2
>>> - Do required changes to take into account the new drm writeback
>>>     framework
>>>
>>> v3
>>> - Fix patch series to apply cleanly
>>>
>>> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> Hello,
>>
>> I tried this out (on a LNL because I don't have an ADL at the moment) and hit a
>> bunch of issues with null pointer dereferences.
>>
>> It looks like the intel_writeback_connector::job field is never filled in but it is
>> being used. Further, it looks like that field exists because conn_state-
>>> writeback_job is gone by the time the capture function is called. However, the
>> capture function is still using that null job pointer instead of caching the
>> required info in the intel specific structure.
>>
>> Specifically, in intel_writeback_atomic_commit() it says:
>>       drm_writeback_queue_job(connector, conn_state);
>>       intel_writeback_capture(state, intel_connector);
>>
>> And the doc for the drm call explicitly says it clears the writeback_job field that
>> the capture function tries to use.
>>
>> I made the attached changes to my local tree and I no longer get any kernel
>> panics. I do get a "flip_done timed out" followed by a bunch of warns along the
>> lines of "attached crtc is active, but connector isn't".
>> I'm guessing this is related to running on unsupported hardware? What would
>> be needed to enable this for LNL?
> Hi John,
> currently this series is just a redesigned version to check if the expected changes in DRM core works with our design, there are some flaws that creeped in due to this. Currently this is not up on my priority list because there are two series mentioned in cover letter which are still not totally Rb'd stopping me from looking into this series and fixing it back up. If you can have the look at those DRM changes and Rb them.
The first pre-req patch set is this one from Dmitry, yes?
https://lore.kernel.org/dri-devel/20251228-wb-drop-encoder-v4-0-58d28e668901@oss.qualcomm.com/

AFAICT, it is mostly reviewed but there are two outstanding comments 
along the lines of 'please explain why'. However, it has not been 
touched since last December. Is Dmitry still working on this? If not, 
would you be able to repost with the requested explanations? I don't 
think that is something I can really comment on as I don't know all the 
background here. Indeed, that's the kind of questions I would have asked 
if I were to review the patches!

> There are some more changes that LNL requires to get writeback working.
Like a few tweaks or some significant new work?

Thanks,
John.

>
> Regards,
> Suraj Kandpal
>
>>
>>
>> Thanks,
>> John.

