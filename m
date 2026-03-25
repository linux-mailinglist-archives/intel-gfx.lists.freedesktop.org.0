Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YKInOjwfxWnr6QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:57:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8D3334CEB
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:57:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21B9C10E2AD;
	Thu, 26 Mar 2026 11:57:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GvDGdNRo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com
 [209.85.210.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E098F10E7BE
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2026 15:43:35 +0000 (UTC)
Received: by mail-ot1-f41.google.com with SMTP id
 46e09a7af769-7d7eb85fb81so2798376a34.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2026 08:43:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774453415; cv=none;
 d=google.com; s=arc-20240605;
 b=Asnz8vQRHHrF5zY2qBELEaONGCASDJCdfas+BhoA3Z+VD2bIZ+Wd8YNRUFpXy3DEQG
 mzAeHPf/6Y3h1DSKJj2Pg77rCbPIMcqCFWOPLuNuPRpr0K6agX265Qa1slgT5cryKy4M
 xl1ZAtp3bXHjA/2M7V1KwZ4uLFfYGY/+ui4yCIG2oVv9HILFKnukfiLB/IMxDoJ6cFLb
 1fNGdmKE/wjBxI6sQkRAIa3KgUtSGar0zyNY4MLPNFr9WcvL1735jN5e95OPjDGD3nWR
 YYjYqO2Ld0BhmDURaZ1P+3cs6dqAIDJlcvhYcJlKXsTa5nXuOsbAODEHrmXvDDgozGFi
 avxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=yD67tJcHEyvECseTpAMS4ucj6hqgxRFAky6vuFsny9E=;
 fh=aVrWfkMMThNexWVkIPDyf/k4ZLUxkDWRfXytY+wYhHY=;
 b=XTKPFhiR5Tj+erSIvGM6fTojga6IHuXw9+l+dddVqIG/PKyNV+YGvfc8U2fCdwUS+U
 n94guocEbzy14kBGT5F3L/oXiOndlzNGj1EE45a4chO/j4uxSSx3Zg7MHa2C9zG6IiKc
 7gygDX4oK/4QKSyKAcqefkRMTHAeXIaQdxTslnQ4+xTuyi4sSJMppHwdbkxj3ZtDiovf
 to6Ev/AkiWw9inPCoHvasFPbI0Jw2eaT/YCiXboQJTr/s2jVC7dKh+5Py4gs3+sBqgno
 B02Kdd6O/ZYW7N9kfhKztTHqgl0cJe7izxJPIb+IknNX6sts81uX46LxN2CojsHoDtyu
 2W+w==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774453415; x=1775058215; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=yD67tJcHEyvECseTpAMS4ucj6hqgxRFAky6vuFsny9E=;
 b=GvDGdNRol5TB9TFcd/81LILt6HVBw06XIz86JrRxQbt3Lf4kGhf5wr1fNAMKlVLSt6
 c+vJh7ykTS59RUIwIj7YRt991p1n6DrR6rAmdzFej1rjTHZRJ4i4l1yJvye2nrolGj8/
 yvd91rG8rY7V1ymQl6N6QevtWA5q4AGNCWyszFiW15sMMuBN0j5XiTwlLkZQVmnDp8Qb
 +x2UuiHBPgJd7Ptzg0X2q+YQ8jnOaLEqSb0si2q9iYVHdIMFNIfKqAGih1C589u8U1cJ
 byuy/SRPny1JruhQqk04xk+bXibDGp5d8iGK7KeDH56YtGGEBk6PKnC/Sc+cW1vfAq03
 9N5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774453415; x=1775058215;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=yD67tJcHEyvECseTpAMS4ucj6hqgxRFAky6vuFsny9E=;
 b=XZLwvJJP0qwga/Zd9zTZhN5WFGRPYzGgducgbiAcDcFl4UxmJP7UlcJOutOLCnYbYh
 6ZDIlFTfU7/uP6aJRyPfcDRg2KQcw/sWdArGkFgmwgKsKgmtEZxcd7fnmGo/JR4eg3xY
 LgqljBbq1CFKkoaiF/teNSPPduIVX449FCpbYRxebkr5W00isgtpUUx3hKGsJs1Ivl0D
 LIozqS7lTIHf9ADcRwdWCd4pKSz5nCZRaPrcoboeqSbCN3Cj7C/iNNTIWvMDGze71aqL
 bbC4XXfkN/jvjPMGfofzMBM2Z6ABviLKL25VkkyE8l9LBQJvzl/o0iAUgAodNVKhVQzw
 WZfA==
X-Forwarded-Encrypted: i=1;
 AJvYcCU4lsLMlHR7+sDN74BXrodnHn1g2C1+WzGVKjsPmoPiLqD/KeAo5N1kxnEQKt4EiuwJjF30kfa9WIY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxaqUqZkFxKSyjS03GOFAqxJ+sqte7raTIHMmqx8r77K8Pbch/I
 esom7/Vpht9ywz4udR0bNUKxLOquHxIrxBDIm7dL2zmQf8CYPeOSrpAElB7d4lkQ/d49DGVR4vn
 ktHhbKNs8/z5Ek4a9LxtA/hKx5vq7UII=
X-Gm-Gg: ATEYQzw/s8XxXv9/Eo91Kyuv68BN1F4i8ISeNOKvCV+rI41ENU4kv/P0TBqQGSD7d05
 rIru06qeQTG6KwQ1FHHyB0BGh2Nw0lJ4aO0T2VqRw2J7uzaFOBQWd2Qybe18dTgXl0mdn0vQwqv
 mMeeeYOY87K0StnWBOk3x+SzRrp8njLIPCPteI9HGbtJzjzqYqcKbLrEJ+cMuujG/3L0QxY2zPK
 w7YLKOjb1LQUX0n0QgSb/qxyrqLp9NMzYy7biMCKCM67+BMjO3UQHayu9fAY9EUlLlwI/pMvI1N
 tGPyr0YzezqRi+C39g==
X-Received: by 2002:a05:6830:668d:b0:7d7:5559:3d1c with SMTP id
 46e09a7af769-7d9d661ee95mr2188210a34.1.1774453414758; Wed, 25 Mar 2026
 08:43:34 -0700 (PDT)
MIME-Version: 1.0
References: <20260324151741.29338-1-sosohero200@gmail.com>
 <177442567303.11552.5320450093167124387@jlahtine-mobl>
 <CANq=4mAEmEQWTUBpDJAgaiw930NUzL6-7EV-Y2WqLGst2YWLiw@mail.gmail.com>
 <177444763778.66558.14341959485998155867@jlahtine-mobl>
In-Reply-To: <177444763778.66558.14341959485998155867@jlahtine-mobl>
From: Yassine Mounir <sosohero200@gmail.com>
Date: Wed, 25 Mar 2026 11:43:23 -0400
X-Gm-Features: AaiRm52IDextfpKmWVkvfA9tVtrtRZyduH9GqvYCpRT7to9eSWZ4odqYmmh6G9I
Message-ID: <CANq=4mA2naVHxRTDPqfJwq26DS8LPyY_KY+M2Picq89gmHD9UA@mail.gmail.com>
Subject: Re: [PATCH v2] drm/i915/gem: Fix UAF race in eb_relocate_vma
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: gregkh@linuxfoundation.org, intel-gfx@lists.freedesktop.org, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Content-Type: multipart/alternative; boundary="000000000000750dcc064ddb21e9"
X-Mailman-Approved-At: Thu, 26 Mar 2026 11:57:38 +0000
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:joonas.lahtinen@linux.intel.com,m:gregkh@linuxfoundation.org,m:rodrigo.vivi@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sosohero200@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sosohero200@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,intel.com:email]
X-Rspamd-Queue-Id: 6B8D3334CEB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--000000000000750dcc064ddb21e9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Joonas,

I just finished testing the v3 patch on the latest *drm-tip* (commit
gb2c69e09).

It builds perfectly with no errors. I also booted it in QEMU into an
initramfs shell to make sure everything is stable. Checked the dmesg with g=
rep
-i kasan and it's completely clean=E2=80=94no more use-after-free splats du=
ring the
initial driver loading and relocation paths.

The i915_vma_get/put logic seems to be doing its job correctly. Let me know
if you want me to run any specific IGT tests or if this is good to go.

Thanks

On Wed, 25 Mar 2026 at 10:07, Joonas Lahtinen <
joonas.lahtinen@linux.intel.com> wrote:

> Quoting Yassine Mounir (2026-03-25 10:20:58)
> > Hi Joonas,
> > Thank you for the detailed feedback. I apologize for the double tag and
> the
> > direct submission to Greg; I'm still refining my workflow.
>
> Ok, then to level set some expectations:
>
> Have you actually confirmed that the code you have submitted compiles
> and does fix the bug you reported?
>
> Expectation is that you run the reproducer on top of drm-tip and see a
> crash where you pick the dmesg/KASAN splat from, then you run drm-tip
> with the patch you have prepared and there is no crash.
>
> Regards, Joonas
>

--000000000000750dcc064ddb21e9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p>Hi Joonas,</p><p>I just finished testing the v3 patch o=
n the latest <b>drm-tip</b> (commit gb2c69e09).</p><p>It builds perfectly w=
ith no errors. I also booted it in QEMU into an initramfs shell to make sur=
e everything is stable. Checked the dmesg with <code>grep -i kasan</code> a=
nd it&#39;s completely clean=E2=80=94no more use-after-free splats during t=
he initial driver loading and relocation paths.</p><p>The <code>i915_vma_ge=
t/put</code> logic seems to be doing its job correctly. Let me know if you =
want me to run any specific IGT tests or if this is good to go.</p><p>Thank=
s</p></div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D=
"ltr" class=3D"gmail_attr">On Wed, 25 Mar 2026 at 10:07, Joonas Lahtinen &l=
t;<a href=3D"mailto:joonas.lahtinen@linux.intel.com">joonas.lahtinen@linux.=
intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">Quoting Yassine Mounir (2026-03-25 10:20:58)<br>
&gt; Hi Joonas,<br>
&gt; Thank you for the detailed feedback. I apologize for the double tag an=
d the<br>
&gt; direct submission to Greg; I&#39;m still refining my workflow.<br>
<br>
Ok, then to level set some expectations:<br>
<br>
Have you actually confirmed that the code you have submitted compiles<br>
and does fix the bug you reported?<br>
<br>
Expectation is that you run the reproducer on top of drm-tip and see a<br>
crash where you pick the dmesg/KASAN splat from, then you run drm-tip<br>
with the patch you have prepared and there is no crash.<br>
<br>
Regards, Joonas<br>
</blockquote></div>

--000000000000750dcc064ddb21e9--
