Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QG2rC2RkwWkjSwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4E02F7645
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 672A310E524;
	Mon, 23 Mar 2026 16:03:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NV6Ysiew";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yx1-f44.google.com (mail-yx1-f44.google.com
 [74.125.224.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0017810E102
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2026 23:30:22 +0000 (UTC)
Received: by mail-yx1-f44.google.com with SMTP id
 956f58d0204a3-64e8cdafeffso3679365d50.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2026 16:30:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774049422; cv=none;
 d=google.com; s=arc-20240605;
 b=gV+b1kY2YXNIv1aUYdf4eHE1JiK+HjpSBmdfjIGeTDPnuFyLIUrtVxHScZ/Ac4iPMy
 xYNdADUlDIsRBTcm1dgKgJYDAyHbDVhpgHsuUF7mhBAzrA+cLHah50NjKZnqGjgU+AKm
 cKSFLKT5uJp3oUQbtxREojgAQtIF9n6WPfrisQwv6zzd1k7f40ixmO7HR68wUsheCOtf
 f8xglMBGF+Ej77HJ4RtYPjKPvUjM0zcBW5P6DS+Sez2S+MO3KqbHvWcrsDS1PNMWBfvg
 R9tEpK/jqTH2PT8Hq8pqdOpyOpDKsQ9BDxd/LT+lNJCS/GhfWExhQ0lzR+ed+Vxo6lul
 A4RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=gGm27wM+81bWCfb+V5biCQ0jTOal6htbF3yNa3Lpemo=;
 fh=7F2qUd8J7L9oLcuFZ7Prap9tgM02mw2Yl1ipKEz8Jxk=;
 b=dql9ng5UCsK6PVRmyQCZQq3UfVsgNa3x1J9Dny4ehCnCqavdUsTZIKt76JWqNs9g7Q
 aezF/1tEgBP2c9y4S5JmEg95y0GUeCD0uTl+XegRlPF5BszxBf14UyknZHK9dU0hnFpf
 0Q5n7GK8WtLex1kejkjnSP09CvYZmOXEGtmJ3zSA5HpbSAVv1JU2Ghl9gpF71rsJhuU5
 bMesJBrlrDtLqIm7xQI7m82oCBSsoKImuqHGXIYhoBnW9q2KeAfAGtc/8zkAvskVFMqK
 x/IYs2MZRdIiI24mjeLG2SCHFEYCYfGKaiSFxY78Xpq3c0nyx8Kx3zpJbKr1Z5yzWjd9
 cQsA==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1774049422; x=1774654222; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=gGm27wM+81bWCfb+V5biCQ0jTOal6htbF3yNa3Lpemo=;
 b=NV6YsiewSSNPsqrX7X4BwL3zNJeycxL/qa7XszUSuZhIOJSGUXNen3VFEAs8/cYSzU
 PXo0WfxCOAVqheJUGRr6P+TS3ECcHuFmuC2Bvy6SigneanYEKswbPfO3hC727hu/k1BO
 EQ01a4myHwGl5Sp2rGoFmOuMPc2zbNfxjbynkOLwWHAlJNaZzkjbO5Llg7qL63F2u0L0
 J4U36Ar/HHykSdMKoi2pdyKZ6sLuVVGLFRD6OOGDw+44REH3qrN+acvNdP+3yvql2c5R
 G5RodL2tEeU9HM++mSORBl+bzk+tw5azZHrFU8ofNZ+fs52I7BrVIVCnYIixskQSD23h
 q8sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774049422; x=1774654222;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=gGm27wM+81bWCfb+V5biCQ0jTOal6htbF3yNa3Lpemo=;
 b=VVMjyUSg8PBsbrMsJSbttNXpPOf6qlGRn3dFfU3vbFlHEq1/X0MeGXR+FYu0441Yxs
 GtRC2kVXqpe5CHUFferVtftozO2KxairzJq7R8K4ytd296KfZHLE5YTMAFK56VDpuCs1
 ee/Dcrs40V35w1q+FcjRFRTjFPExiVVwKN4M7oPyYzczcWQNByCvk1jbG07cFN2MKTgK
 fIGoCo6OQRJcldGikMVhXOZco+KY8RJaM86dOb1cLiFpMSIvrM2GKPg5qoryn3kp2A0T
 m5oSn+x4qnIbYXj22oAAh1YXQfiVjXIUppzQfgaxH52L5XNj3wLLUgaclOCjFOwsWXMm
 SZIw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUHQN3gLO7NQpBgbGRQ7yHKkrnPV4uMBnJPESydb5ngjTANTxddPB8UY5fssjwwXbz/dfY7ssiBKlA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yyb6DxtY9Tv5VFOjiRwUsMcvj8SD2QNGhVKxXvEzKeBf0gC/OKc
 OD86MZ3vVTFQH7WfqRNf4kb3h02bev5bJfxUJgHDufAl+oroRMXXUUArga/26HZUwgZP9dIrvZJ
 55HIzwIQrFGokbBn5t1KTRuKwsS08wzE=
X-Gm-Gg: ATEYQzw8qQSvsDwK9Skwk7ZsyYAG+pE216iNHeoMIJsdF/hQTHup5SVY1ebCjlTolXf
 uJzz9LDSW5eHTZLICIwG9JsuEb8dsC43tbpl//DJMMvImXPP+b5EzfEhYfQj4PvB1XfQAWGSXPX
 XGvH6M9JD7oCA0SnC5cOWAdjXPHdDBZ2WGqPD0dH9NHmEhBejqdDhJ24v+XkSSpSFnHAc2Zaae6
 EyPP3KJeXJRxy6A3gNlDoKWWnFw8DDHXDDg7EVpfRwK49hw+0pGCyt3eYv3AyBqhdk9QRQGaEFq
 tzhb
X-Received: by 2002:a05:690e:e88:b0:64c:2590:e454 with SMTP id
 956f58d0204a3-64eaabf5724mr4407440d50.14.1774049421463; Fri, 20 Mar 2026
 16:30:21 -0700 (PDT)
MIME-Version: 1.0
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
 <20260313132103.2529746-60-jim.cromie@gmail.com>
 <177402491476.6181.12723360930731783132.b4-review@b4>
In-Reply-To: <177402491476.6181.12723360930731783132.b4-review@b4>
From: jim.cromie@gmail.com
Date: Fri, 20 Mar 2026 17:29:55 -0600
X-Gm-Features: AaiRm52E-e5beknCm0D3IoqJOtVzVrqihcI488lZobOssZKy_IBRdDrXcsBQ3Ac
Message-ID: <CAJfuBxwihP5ANOqgEmQAJF_PcHsa54T7Urn486DqbOy6rtcPHQ@mail.gmail.com>
Subject: Re: [PATCH v11 59/65] accel/ivpu: implement IVPU_DBG_* as a dyndbg
 classmap
To: Louis Chauvet <louis.chauvet@bootlin.com>
Cc: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com, 
 gregkh@linuxfoundation.org, mripard@kernel.org, tzimmermann@suse.de, 
 maarten.lankhorst@linux.intel.com, jani.nikula@intel.com, 
 ville.syrjala@linux.intel.com, christian.koenig@amd.com, 
 matthew.auld@intel.com, arunpravin.paneerselvam@amd.com, 
 skhan@linuxfoundation.org, pmladek@suse.com, ukaszb@chromium.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 23 Mar 2026 16:03:24 +0000
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
	DATE_IN_PAST(1.00)[64];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:louis.chauvet@bootlin.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:amd-gfx@lists.freedesktop.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,suse.com,chromium.org,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,mail.gmail.com:mid,bootlin.com:email]
X-Rspamd-Queue-Id: CD4E02F7645
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 10:43=E2=80=AFAM Louis Chauvet
<louis.chauvet@bootlin.com> wrote:
>
> On Fri, 13 Mar 2026 07:20:24 -0600, Jim Cromie <jim.cromie@gmail.com> wro=
te:
> > [...]
> > Anyway, to play nice with DRM, we change all the constants, from
> > macros calling BIT(X), to an explicit "enum ivpu_dbg_category"
> > starting at 16 to avoid DRM_UT_CORE..RES.  This is all in an indef to
> > avoid changing the constants for the non-dyndbg case.
> >
> > Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
>
> Hello,
>
> I have a maybe dumb question: if you enable CONFIG_DRM_USE_DYNAMIC_DEBUG,
> then the meaning of ivpu_dbg_mask will change no?
>
> In one case you will have to use ivpu_dbg_mask=3D0x01 and in the other ca=
se
> you need ivpu_dbg_mask=3D0x10. I think this is very missleading.
>
> In this case, I think it will be way easier to completly change the
> expected value for ivpu_dbg_mask to have the same behavior with or withou=
t
> dyndbg.

yes, it takes a bit more explaining certainly.

The reason I kept the old numbers for the old way was to preserve obviousne=
ss.

The /sys/modules/ivpu/parameter/<name> maps bits 0..N, not 16..N+16
I didnt want to fiddle with the conversion, and possibly get it wrong
(miss something).

> In addition, I think this could be nice to have a "rule" like: "cores"
> should use LSB for their classes, "drivers" should use MSB for theirs
> clases.
>
> This way, if DRM decide to create a new class there is less chance of
> conflicts.
>

some guidance makes sense, Im not so sure a hard rule wouldnt just over-spe=
cify.

a simple rule would be reserve-in-8-bit-chunks.
drm.debug has 10-12 bits (not sure exactly) leaving 4-6 for "growth".
So I started IVPU_DBG_* at 16 iirc.

Theres also some question if ACCEL should have their own set of debug-class=
es,
or should be reusing DRM_UT_*.  currently we have both,
1 or 2 accel/* drivers use DRM_UT_CORE (but no others IIRC),

ivpu had many, so I took it as a real-world example of the need
for multiple classes (not just the test-dynamic-debug* scenario).

This maybe isnt optimal.  But it might be premature to fit the strait-jacke=
t.

> >
> >
> > diff --git a/drivers/accel/ivpu/ivpu_drv.h b/drivers/accel/ivpu/ivpu_dr=
v.h
> > index 5b34b6f50e69..ef5a96b961fc 100644
> > --- a/drivers/accel/ivpu/ivpu_drv.h
> > +++ b/drivers/accel/ivpu/ivpu_drv.h
> > @@ -81,6 +85,41 @@
> > [ ... skip 9 lines ... ]
> > +
> > +enum ivpu_dbg_category {
> > +     /*
> > +      * since accels are drm-devices (CONFIG_DRM_ACCEL_*), adjust
> > +      * IVPU_DBG_* to avoid DRMs 0..10 class_id reservations.
> > +      */
>
> Here that could be nice to start the enum at 48, so there is a real hole
> between "core" and "drivers" categories.

Im unconvinced the distinction is that clear -
DRM_UT_CORE is used in drivers, as are KMS and ATOMIC ( iirc)
And is ACCEL classes core or drivers ? probably a bit of both ??


>
> --
> Louis Chauvet <louis.chauvet@bootlin.com>
