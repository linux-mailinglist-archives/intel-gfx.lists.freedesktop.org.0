Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aNkFNkrEumkNbwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 16:27:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9832BE2A2
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 16:27:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AF9E10E465;
	Wed, 18 Mar 2026 15:27:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=kde.org header.i=@kde.org header.b="mJ0t/PXw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from letterbox.kde.org (letterbox.kde.org [46.43.1.242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4570F10E465
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2026 15:27:03 +0000 (UTC)
Received: from mail-yx1-f43.google.com (mail-yx1-f43.google.com
 [74.125.224.43]) (Authenticated sender: zamundaaa)
 by letterbox.kde.org (Postfix) with ESMTPSA id 7116932302A
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2026 15:27:00 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kde.org; s=users;
 t=1773847620; bh=XUl21vHhL+LbY2Xi3MlPdKDu1f5OFFZcciY5bcT+eJ4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=mJ0t/PXwsJ5MZru79gI3vdPzoMKbSsNQw4J6O1GtbTPrr/d8BXQgdevEwMUT/Ae7L
 LCNs+QnplmfSsN4znSD4vf/2Uv7eqEhhnOqdTGuKc3zP9cDzJ7IQTR+Q92zQJ8kJZb
 cQotS9P/SLkWJJTstHzPZnhrGWQ1MTsGt2n+xQvDay6yt0rHfOms5z2MOnHJ6s36xM
 KB+czM8S+sR5LZghEVI+pTb0HSn8VSRPzSMVdrlWjrOYExCiKzqWyNAL3GUGA5alJh
 Gz9UMdUw9NUfm/FI8LRrhIBIaD7n7g80loh9zKKVlOVzz/KEkU2dfzikB9HtF9HGTO
 YO013G6RxPz6A==
Received: by mail-yx1-f43.google.com with SMTP id
 956f58d0204a3-64ad46a44easo89825d50.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2026 08:27:00 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCVTj0N+u4oWc5r4Bt6+SadBg4bb9D+P6CtogO5PSSFwWcTVx9rpVxiigHxR1waPTn5rXCPVrSzjPtQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy8OcqXX80YVkOf+JioS0oVkDShMEWhbDLda8y/UfsoZ2xf2GNN
 UURF+El2agZtAbbPXASX8hXwmMVtvAKoYeAj00QPKpoYNzdnwYvolSPhxzvBCSjJMAPX6W7IVDF
 W0VrVCFyYw+VeCQ6OPPAz2pK1tSE4irc=
X-Received: by 2002:a05:690e:4293:20b0:64c:e7a0:7eb8 with SMTP id
 956f58d0204a3-64e9134c59fmr3433276d50.24.1773847619255; Wed, 18 Mar 2026
 08:26:59 -0700 (PDT)
MIME-Version: 1.0
References: <20260223-atomic-v10-0-f59c8def2e70@intel.com>
 <1a4462b8-def9-4474-8382-6e99b7c8276d@intel.com>
 <aZ1OIDsVfFvyHUK5@intel.com> <5f04b5f1-744e-449e-9a45-00fd477256fc@intel.com>
 <aZ1lbnop84k4du6N@intel.com>
 <f155fae0285684108e92887e963358ea0ea158e9@intel.com>
 <1a39b9d5-ed57-4f6b-a4e2-9e26a2734c32@intel.com>
 <21d7edcec1b6fd767b066de4ec6734cea8992904@intel.com>
In-Reply-To: <21d7edcec1b6fd767b066de4ec6734cea8992904@intel.com>
From: Xaver Hugl <xaver.hugl@kde.org>
Date: Wed, 18 Mar 2026 16:26:48 +0100
X-Gmail-Original-Message-ID: <CAFZQkGy=P_kymzU5CdsFth9cKmyQQuWZhy5BRryf0gxULhJX=g@mail.gmail.com>
X-Gm-Features: AaiRm51I2NGi-OkAtLpMwOYBB8XOow-ApWX-oWt-BkyKRFoBuRHFjzKq2mpknrI
Message-ID: <CAFZQkGy=P_kymzU5CdsFth9cKmyQQuWZhy5BRryf0gxULhJX=g@mail.gmail.com>
Subject: Re: [PATCH v10 0/7] User readable error codes on atomic_ioctl failure
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: "Murthy, Arun R" <arun.r.murthy@intel.com>, 
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, harry.wentland@amd.com,
 uma.shankar@intel.com, 
 louis.chauvet@bootlin.com, naveen1.kumar@intel.com, 
 ramya.krishna.yella@intel.com, dri-devel@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 Suraj Kandpal <suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[kde.org:s=users];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[kde.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:arun.r.murthy@intel.com,m:ville.syrjala@linux.intel.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:harry.wentland@amd.com,m:uma.shankar@intel.com,m:louis.chauvet@bootlin.com,m:naveen1.kumar@intel.com,m:ramya.krishna.yella@intel.com,m:dri-devel@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:suraj.kandpal@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[xaver.hugl@kde.org,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,ursulin.net,amd.com,bootlin.com,lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[xaver.hugl@kde.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kde.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email]
X-Rspamd-Queue-Id: 5F9832BE2A2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Am Di., 24. Feb. 2026 um 13:07 Uhr schrieb Jani Nikula
<jani.nikula@linux.intel.com>:
> Yes. But we can't guarantee all drivers will report the *same* first
> error in the same circumstances. We can't guarantee we will maintain the
> *same* first error over time, we can't make that promise without
> painting ourselves in the corner wrt driver maintenance.

That's ok. The point of the error code is to reduce the combinatorial
explosion of possible configurations compositors have to test in order
to get a working configuration, but they're still expected to do (if
necessary) many atomic tests in series, especially when modesets are
involved. If the first reported error changes, it should still
eventually reach a working configuration, even if it may take more or
less time than before.

- Xaver
