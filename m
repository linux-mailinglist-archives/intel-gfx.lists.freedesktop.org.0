Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SKucFdKt02ngkAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 14:57:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F153A36B5
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 14:57:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9B0C10E240;
	Mon,  6 Apr 2026 12:57:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DCmQcBFa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com
 [209.85.221.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D213E10E3AD
 for <intel-gfx@lists.freedesktop.org>; Sat,  4 Apr 2026 13:10:49 +0000 (UTC)
Received: by mail-vk1-f173.google.com with SMTP id
 71dfb90a1353d-56a8e0ea02aso3049032e0c.0
 for <intel-gfx@lists.freedesktop.org>; Sat, 04 Apr 2026 06:10:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1775308249; cv=none;
 d=google.com; s=arc-20240605;
 b=EVFo0womyi7UntMQxicimjtvDmGJiUc221/dnkD+KmEYZvVCBI0KPfVFWgLFd6SLzA
 qeD1l7HKkMMoiuWgLeXC5/OPLWOll0kxxnjqkuqSkn+rXRMvND6Bk0O/moU2oF2qc1vK
 HeByOol587RgS2rjNeaYVR0uwL8XZynU0s2rUuV+U1jOuA8IXq9MrZjh8xU09JrgHnbY
 znt/iulJV4JCnxOkByx00lQd45PfUCMMv4h9Z9Z6aMBp1nlkxXm1QQLyGri4Ibhb0C1K
 ZLArt7QM9iT5vMpXZSXMsL5C5vw586K09tWTxfZpuct+iyDOHDHzPvH7h+tKKOnmMNGO
 jgvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=8HyqRbvBObQZXtQPHYrpXqo29d4/ZY4OJj9xIWAPpRo=;
 fh=LwMC8pryqUA5XNaPP+Wf3sp1Mhj2GsP235j9VbTXUC0=;
 b=VEBTmZzbWia1WdkqkqD7lFVPpsBpTiKKP+82c7N/iTharjliC5IFPe/S5JRpGTD5wJ
 Q0yRwqiKyRrZ38iIK+ljZgQ8hiRINudWCesl/F9gG/erT508FshugpxABuhVzjlcroEz
 fHKIwsDtRzD1G92VId4xSWs1wOK5F7Xynz2gL5IItAuYcHHdRLJz2nzwN35wyqbacC+x
 Au3X6TR0h85lJbk42YuFEonNED4b2w5lVpztbmAbxk1R5YBKLE5wsLc7PDY5bVnELj58
 kNE0lCdmoiIIxLpiWd1lGDiRWZe6cw/VLYMYdf1l5z3TufHu9XoCz4NYCwBoMzDhWXJe
 oByg==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1775308249; x=1775913049; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=8HyqRbvBObQZXtQPHYrpXqo29d4/ZY4OJj9xIWAPpRo=;
 b=DCmQcBFavWP9iDUJG1o0NetQwtS6f0VkfABXLfifzRt6dSnQaPZgBEtfRZY+ONfrfs
 HRX9bWxYroiTMncFrKlmPTKyDn6JlTBo9tHTmJOzWhZVgsOhelYnnVtDn77X6HsFlZOD
 Fsd90iLXHl3V+kmcX6El/g+Pzt6mw2FxMSqifxD06ysvcFQT7lxX4uXWTRFqTdvutYIx
 83pSKTy+IiMID54+YSvnrD+bwvuRPRy3hJX9G15dRcfQDYF1biWJ9/jWQCAKrVkDNTFm
 qnBN7xoAPBTHL3F5QlOcXzNu9ou0keIpU5yYdDw9pfE3x65cKO8NcoKoqNRQ4KmSE+Uh
 j/2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775308249; x=1775913049;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=8HyqRbvBObQZXtQPHYrpXqo29d4/ZY4OJj9xIWAPpRo=;
 b=Q3skEIKyMESl4aIhH+INP/Ju0Us/+p02dw1IW4UETBFtO/gcXOsBBdpe5Zw/6jwJi4
 ftuT85sH/SBXr1E5kr/Twyqb3I6ajBeA8wvmU0H1EE6dCpNr+AOdiWBmhuJ2QQ9dmeaA
 qxE4KDTTZhcdcX0bUuhBHiN+qP+E33LUBUJ4Vrrtg6pC5QjAxG7g4hYb5hJ/2SP09ZTq
 A+6pYpAUsAFcju5kC3sZsG6tJA19B6v67qKu3vNa1JbuzPes+2Nc8or/7uugaBwzTBjZ
 Pzw0a0tLvSkY6OMmw7RJ2US3uQoL3cs+HVLzxB617l8Tf/6AzZ24ZlvgjLHa7G5CyPXy
 2pFw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWCfkSX93VcLxMuYY71mbzzgY70JNl14r36bubFswIMxhC6r5jlxPlLWEG/JuxMSPbv5cBUwOyu1eM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwELYjY+WsWCcPleKqQgV+Zvhs2VIkCxIj+1NA1KGmZdF4nuhs2
 8w/HVAkwyKcUC+AF/h+8EkBLqyFn1jx9BxXdynpuCdoG1eW1mXzKRd9NZV8/FhM/j4/tgk3pEbn
 WUbVAJfnb+RO41yMUwTTahgyCfFRtMeM=
X-Gm-Gg: AeBDiesNNZacf6PjKRj/RfBh1YfCsNMGLsNliokuYY5SboAIz1vdJZhmr+K+MNPxlQM
 S7ExuJeisIqFiP2tnkXUa7lbaK6E7cQqE1HEUfCsdSyCvhwg1428oSBTWDEEv6NaEz22IrJcDW7
 tKDYH5QqTOUicYWWRoqDs6fablMHWSV8MGW6m3gkQSq0zRqcM5CSZLrSEcmIEhbSDs+az6J+lL/
 cT/5qjf3xtMjn+jteLAENiPEg2DfiRfMKyfXGHMIafHHLE3xxWENY7Q2EzRzbtIZ07dfP2YIy9g
 I9ls
X-Received: by 2002:a05:6122:3117:b0:56c:d862:37dd with SMTP id
 71dfb90a1353d-56daba00310mr2416475e0c.14.1775308248826; Sat, 04 Apr 2026
 06:10:48 -0700 (PDT)
MIME-Version: 1.0
References: <20260326185413.1205870-1-jim.cromie@gmail.com>
 <20260326185413.1205870-69-jim.cromie@gmail.com>
 <20260402201450.GA966967-robh@kernel.org>
In-Reply-To: <20260402201450.GA966967-robh@kernel.org>
From: jim.cromie@gmail.com
Date: Sat, 4 Apr 2026 07:10:22 -0600
X-Gm-Features: AQROBzDRTOzUzM599gp-nqIHu_gVlpR5oj_SwsKJNy6Z4X8KHhBApGeW-pcrUKU
Message-ID: <CAJfuBxwRst2GGZmFW6Lx1jb4CMNEsutvQoRfVg2RBSJCtVikoA@mail.gmail.com>
Subject: Re: [PATCH v12 68/69] accel/ethosu: call DRM_CLASSMAP_USE
To: Rob Herring <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, airlied@gmail.com, simona@ffwll.ch, 
 jbaron@akamai.com, gregkh@linuxfoundation.org, mripard@kernel.org, 
 tzimmermann@suse.de, maarten.lankhorst@linux.intel.com, jani.nikula@intel.com, 
 ville.syrjala@linux.intel.com, christian.koenig@amd.com, 
 matthew.auld@intel.com, arunpravin.paneerselvam@amd.com, 
 louis.chauvet@bootlin.com, skhan@linuxfoundation.org, pmladek@suse.com, 
 ukaszb@chromium.org, dri-devel@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 06 Apr 2026 12:57:50 +0000
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DATE_IN_PAST(1.00)[47];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:linux-kernel@vger.kernel.org,m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:dri-devel@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,bootlin.com,suse.com,chromium.org,lists.freedesktop.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: E1F153A36B5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 2, 2026 at 2:14=E2=80=AFPM Rob Herring <robh@kernel.org> wrote:
>
> On Thu, Mar 26, 2026 at 12:54:12PM -0600, Jim Cromie wrote:
> > ethosu.ko has several drm*dbg() calls, it must call DRM_CLASSMAP_USE
> > to tell dynamic-debug what classmap enables them.
> > Also include drm/drm_print.h explicitly.
> >
> > Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
> > ---
>
> Didn't I ack this already? It is up to you to add tags when you send a
> new version.
>
> Or did it change? I can't tell as there is no changelog here.
>

Sorry, I missed that one.  (no changes)
and thanks.


> >  drivers/accel/ethosu/ethosu_drv.c | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/drivers/accel/ethosu/ethosu_drv.c b/drivers/accel/ethosu/e=
thosu_drv.c
> > index 9992193d7338..a0b8cb81a359 100644
> > --- a/drivers/accel/ethosu/ethosu_drv.c
> > +++ b/drivers/accel/ethosu/ethosu_drv.c
> > @@ -17,12 +17,15 @@
> >  #include <drm/drm_gem.h>
> >  #include <drm/drm_accel.h>
> >  #include <drm/ethosu_accel.h>
> > +#include <drm/drm_print.h>
> >
> >  #include "ethosu_drv.h"
> >  #include "ethosu_device.h"
> >  #include "ethosu_gem.h"
> >  #include "ethosu_job.h"
> >
> > +DRM_CLASSMAP_USE(drm_debug_classes);
> > +
> >  static int ethosu_ioctl_dev_query(struct drm_device *ddev, void *data,
> >                                 struct drm_file *file)
> >  {
> > --
> > 2.53.0
> >
