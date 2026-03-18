Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MALfIEG/umkGbgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 16:05:37 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 090702BDD5D
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 16:05:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F22610E855;
	Wed, 18 Mar 2026 15:05:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=kde.org header.i=@kde.org header.b="Er61krbc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from letterbox.kde.org (letterbox.kde.org [46.43.1.242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B08B10E853
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2026 15:05:33 +0000 (UTC)
Received: from mail-yx1-f50.google.com (mail-yx1-f50.google.com
 [74.125.224.50]) (Authenticated sender: zamundaaa)
 by letterbox.kde.org (Postfix) with ESMTPSA id E0F6F324124
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2026 15:05:31 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kde.org; s=users;
 t=1773846332; bh=WM60fIRXtZi3AvzEk1cKreMZ/TW2mI+YcbmNPgjc66Y=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Er61krbcZptN2/BXVwr3gjDVJn8tUoi+2w5OPfUiKIsSH6ydZm70JEWgcSxLHchjc
 b0N5w7o+WyJma/EDehW62cXVl77+9SSni6+VCimZ74Qcyoa+2K3C8gXXqbam19lfCA
 7+DvseniiKusidIQZFfP5jhIa6VpONYs0gAwUriIkWzxDVdNtenzu0UiBAmzo4ZZhZ
 +mVGujWm3KTVgruZ4ULpbHB5vp1NOMhYnISvtPZ94yKdH5m0PIPfdsd6vYDjhKPsQK
 XYT9Pt9mnUzl72vgaqpfjc0l94k5fS3722Ofm/XUqKs1bo8nx0424FlcwJ85ayjV8y
 XeGMz4cMJ68sg==
Received: by mail-yx1-f50.google.com with SMTP id
 956f58d0204a3-64ad79dfb6eso60994d50.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2026 08:05:31 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCXvViIG/+Pqi2ex5RhlpbaR3Ic4T4MM8WE7C285mrm/mc1I6xZMIFg3cxJQ7GSTWT6LX3WlX02SiYY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwDe+gYyImWNtqyjzP55+FxnidZq/XG7YyVJx882KJfy2FPPOo4
 2DKIEGUK7R9k5KJVXMfbAYb0cN+UwI2kfhTiJMvPB3GFKX1/tsSXQndZGBSGa2tv9G0866kVpRL
 cX5k2o4LySL8lVOHAVMcZ/r+dXq6cprc=
X-Received: by 2002:a05:690e:23cf:b0:649:d468:f79f with SMTP id
 956f58d0204a3-64e915c74b5mr2684217d50.59.1773846330156; Wed, 18 Mar 2026
 08:05:30 -0700 (PDT)
MIME-Version: 1.0
References: <20260223-atomic-v10-0-f59c8def2e70@intel.com>
In-Reply-To: <20260223-atomic-v10-0-f59c8def2e70@intel.com>
From: Xaver Hugl <xaver.hugl@kde.org>
Date: Wed, 18 Mar 2026 16:05:16 +0100
X-Gmail-Original-Message-ID: <CAFZQkGw=VJnzFWnh7GT_59NhuSTiy3-VPOcKdWTZX14rkgW_uw@mail.gmail.com>
X-Gm-Features: AaiRm51rkDId2UF8kdECNIRPUwp9vR45i-ie2wDzuOdRk8LoSU1037TqUxrjWRo
Message-ID: <CAFZQkGw=VJnzFWnh7GT_59NhuSTiy3-VPOcKdWTZX14rkgW_uw@mail.gmail.com>
Subject: Re: [PATCH v10 0/7] User readable error codes on atomic_ioctl failure
To: Arun R Murthy <arun.r.murthy@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, 
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 harry.wentland@amd.com, uma.shankar@intel.com, louis.chauvet@bootlin.com, 
 naveen1.kumar@intel.com, ramya.krishna.yella@intel.com, 
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, Suraj Kandpal <suraj.kandpal@intel.com>
Content-Type: multipart/alternative; boundary="000000000000652e3b064d4dc816"
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
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[kde.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:arun.r.murthy@intel.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:harry.wentland@amd.com,m:uma.shankar@intel.com,m:louis.chauvet@bootlin.com,m:naveen1.kumar@intel.com,m:ramya.krishna.yella@intel.com,m:dri-devel@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:suraj.kandpal@intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[xaver.hugl@kde.org,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,ursulin.net,amd.com,bootlin.com,lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[xaver.hugl@kde.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kde.org:+];
	NEURAL_HAM(-0.00)[-0.922];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid]
X-Rspamd-Queue-Id: 090702BDD5D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--000000000000652e3b064d4dc816
Content-Type: text/plain; charset="UTF-8"

Hi,

I now have an implementation in KWin:
https://invent.kde.org/plasma/kwin/-/merge_requests/8991

One thing I noticed is still missing is the catch-all case / unspecified
error; the "invalid API usage" enum value would be quite misleading for
that.

- Xaver

--000000000000652e3b064d4dc816
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I now h=
ave an implementation in KWin:=C2=A0<a href=3D"https://invent.kde.org/plasm=
a/kwin/-/merge_requests/8991">https://invent.kde.org/plasma/kwin/-/merge_re=
quests/8991</a></div><div><br></div><div>One thing I noticed is still missi=
ng is the catch-all case / unspecified error; the &quot;invalid API usage&q=
uot; enum value would be quite misleading for that.</div><div><br clear=3D"=
all"></div><div><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"=
>- Xaver</div></div></div></div></div>

--000000000000652e3b064d4dc816--
