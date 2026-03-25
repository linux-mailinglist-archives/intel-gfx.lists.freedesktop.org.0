Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2BbWNT4fxWnr6QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:57:50 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE78334CF3
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:57:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2216510E9B9;
	Thu, 26 Mar 2026 11:57:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="I4x/DwwG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com
 [209.85.210.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A51FC10E02D
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2026 22:37:38 +0000 (UTC)
Received: by mail-ot1-f41.google.com with SMTP id
 46e09a7af769-7d8b2703f37so289286a34.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2026 15:37:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774478258; cv=none;
 d=google.com; s=arc-20240605;
 b=Qqi/q08bLmlqPtpFKy7blsIeLVWR9SIZMVej3h8LeXsd/mH9oMnb0WlBtd6bJDfVUX
 GucyRIFAAjsYYnlHRnUJu3v+v5Vz+645DuURx0VBIheMw+TzQsOgRUMilgkXNItV2zeV
 HHM4GvSSoDBctKrXbv2t6pehD9oBOW0MZADLiSMUhbpi20rnRpXKuFOz2w2mJBaPqETO
 3F3oCyP6or9KRPzAbrfyBN/dpuQjNeFZZ47CtqXNvFq0pcwvFnJDG7uC/ST35P8Th7kW
 uKAhz6jthRKf3EDl0Mjggbkj+qDPpkaKe0N4B8pdJLOHSRCrxpKejWGhROIEPz0gszwk
 C/SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=HyWg7k1CWNfS0SJnMmDpmRXnp9R9P2G/eHDZMKVaerE=;
 fh=9fmaxkyBz1QY12833+C/IC3ga2RQ1kmBcyqbBFoFqdM=;
 b=MVBFXktXfRllmtHkUiPPGmh2JhB3sqC+F2ZGLDvfMy6dJACrXAhreGqldgTc7ionnH
 Q9xpyahc28TL+qCPuahfxxzM2HgvLX382N5cQV+sKsVAS8M3Z2ZD9U9g23pFhEW8UOcZ
 oNVsLtpLbHVjQFlO5fMyNxJA4iZ/mBTsYGo12mL09ucvCs5vj7PkmbBisBSixQKlK8xa
 wehAzvsKTsG1hHZxM0e+U1G752cAIfkAicUPdjNu6zxinzY1RyBBoWPSzGSjgZh4JTfM
 uzIEi31rJN9Fr0MKsZxKcVuRZSARS1ZJYXXqmSa4ItmBJ4LaH2voaEif7wgff3+82UaN
 sq3g==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774478258; x=1775083058; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=HyWg7k1CWNfS0SJnMmDpmRXnp9R9P2G/eHDZMKVaerE=;
 b=I4x/DwwGoymxG1TcVTUS5BKnv2TRvAfsxJN+eNbeNl1Px2pGdMOd8sNtAIc9mFf9jc
 R3/HsaNX5vlYkMPP6PdoIhkEn/uQVt1lS18RUc044RFJA7x29b9MIQRi8fx1Oopw+4Su
 B9eTwXtYJKcx2otqheCk5WDjsVwi/CBJodeeSK7sT+EWoRNBUtDs3j+RGaJXK0ECTmGS
 2ov848Eu3lRAJnYE6dVnNKeZsRdXFEbnhEPZBugJeef5R1Fe793op6PEhcSNMsFfmD1R
 VV+hwJBVKTiBafyWozWeb5uTQ4qOb8NJrgct7y+z/+cCdU3ccDIKE8D0IBlnzSHIS6pO
 /6DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774478258; x=1775083058;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=HyWg7k1CWNfS0SJnMmDpmRXnp9R9P2G/eHDZMKVaerE=;
 b=H4YJPfS0df7WG3c5Tc/aiwyBcMjg7Zqe7vtNdjOsFYJRhvZ5tx+Np4F6ITsUn5ZGlD
 IhoMNNSxTpk2pX4/I85rERlh74jOCaZq57LHzm8XIyI5//KnKxkiE6lK6u2ldA2wMn22
 gaWOdwKkmQNJJw/huSFQmjsdESxyHUQS5wRHY1EjGsnAKB1ZpY8gYfMB5lxH3TXGgZir
 rDCX92dYBrhvHehbqYHG1LnQFIxViVvDgxYZ2fxADmyLaHkJPFN0n3K9UOeUVxMZAr8+
 y+QXbCUwFXhPLn6GQAJIvekl5dyv4s21Nj0p96UgaPsocCZpTiJkMES1kjwVTNDj0Zie
 86BA==
X-Forwarded-Encrypted: i=1;
 AJvYcCV0n7Nj4tYdfm9vlO/Ot93oDV2ExGJJpalvb3qinAaQCJ6Alzens9evstq9F3VqRAZAPad0VsvA93o=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzCg+W4rkqeWRoQg+XDf4uj5R1atf6Ea5SHujONDRIcuaApEN7n
 QiTGnjn94CQ6FcbxWSPBCBM5rjxYsMovFhw0lU4Ev2HbVWaAUHoc/Mae71bh9RC3HKnGfqtvEHz
 ivCXooUaqtxgET6+bujarN3xyf7USxzo=
X-Gm-Gg: ATEYQzwpjKNxCtJXpRBlASTcnYI1xM5ArCrzqTSQX1xX46OnGfmQERLWiwSHoA0f0dQ
 uXciA6D647k6tE5chKrzBiZjwSiHirCnJXGDyGPMnEeVCqqj4oQK9OAsTwEn8cYpW24juIF4Etu
 /UfcXiO0T9Byoc2o5uUsXkeDpFnJuA8vsvr6yuJ4WO5WZL7ierjCVHmkI353LRNAeY/EYMSX44Z
 bNTYG8O6efYdCYLAQlo2Mu3FtJ8UKtSZefdycL7nnQYVKT/huT+OYZgRk+POVW/pfF5sRf6zH/b
 88zQwFc=
X-Received: by 2002:a05:6830:4392:b0:7d4:4af4:b7d4 with SMTP id
 46e09a7af769-7d9d6781e50mr2455986a34.1.1774478257619; Wed, 25 Mar 2026
 15:37:37 -0700 (PDT)
MIME-Version: 1.0
References: <20260324151741.29338-1-sosohero200@gmail.com>
 <177442567303.11552.5320450093167124387@jlahtine-mobl>
 <CANq=4mAEmEQWTUBpDJAgaiw930NUzL6-7EV-Y2WqLGst2YWLiw@mail.gmail.com>
 <177444763778.66558.14341959485998155867@jlahtine-mobl>
 <acQDZJFtsEtm183A@intel.com>
 <CANq=4mDtmtz5ZFjCCoeAXEWN82J9m8+DLochsNc6BzfwJ6Pdpg@mail.gmail.com>
 <CANq=4mC3+B4akvpp=nr_w1bbnhDwUXx=EzyQtHQpR9DN=ewCMA@mail.gmail.com>
 <acReP5LYxOKCG80B@intel.com>
In-Reply-To: <acReP5LYxOKCG80B@intel.com>
From: Yassine Mounir <sosohero200@gmail.com>
Date: Wed, 25 Mar 2026 18:37:26 -0400
X-Gm-Features: AaiRm50XSCHQ8z9o9Nu_ioLkcVkLROR6WzTiipzRwVZBfofXq-rxEFxVfIjMnTU
Message-ID: <CANq=4mCzoOGCAGZK6KAnCK4iaH+Woy49L=6Y5rCpuNmg_vEneQ@mail.gmail.com>
Subject: Re: [PATCH v2] drm/i915/gem: Fix UAF race in eb_relocate_vma
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 gregkh@linuxfoundation.org, intel-gfx@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="0000000000003505e1064de0eafe"
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[sosohero200@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:gregkh@linuxfoundation.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[freedesktop.org:url,mail.gmail.com:mid,intel.com:email,gitlab.freedesktop.org:url]
X-Rspamd-Queue-Id: 2AE78334CF3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--0000000000003505e1064de0eafe
Content-Type: text/plain; charset="UTF-8"

Hi Rodrigo,

Here is the direct link to the confidential issue:
https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/15882

To answer your confirmation points:

   1.

   Yes, I have confirmed that the code compiles perfectly on the latest
   drm-tip (commit gb2c69e09).
   2.

   I have verified that the patch fixes the bug; with the patch applied,
   the KASAN slab-use-after-free no longer triggers during the stress tests.
   3.

   I have read and followed the guidelines in
   Documentation/process/generated-content.rst.

All logs (KASAN splat description and the fixed dmesg) along with the V2
patch are attached to the GitLab issue.

Best regards,

Yassine (toji1)

On Wed, 25 Mar 2026 at 18:14, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:

> On Wed, Mar 25, 2026 at 01:30:52PM -0400, Yassine Mounir wrote:
> >    "Hi Rodrigo, I've submitted the issue and the V2 patch under #15882.
> I've
> >    marked it as confidential as it addresses a potential UAF security
> risk.
> >    Looking forward to your review."
>
>
> Could you please share a URL for that. I could not find it.
>
> >    On Wed, 25 Mar 2026 at 13:30, Yassine Mounir <[1]
> sosohero200@gmail.com>
> >    wrote:
>
> >
>
> >    >> "Hi Rodrigo,
>
> >
>
> >    >> I am currently following your instructions to file the bug report
> on
> >    >> GitLab. However, my new GitLab account is pending manual approval
> due
> >    >> to the current spam restrictions on [2]freedesktop.org. I have
>
> >    >> contacted the admins for full permissions.
>
> >
>
> >    >> In the meantime, I have prepared all the logs (KASAN splat from
> vanilla
> >    >> drm-tip and the clean dmesg from the patched version). As soon as
> the
> >    >> account is active, I will post the link here.
>
> >
>
> >    >> Thank you for your patience."
>
> >
>
> >    > On Wed, 25 Mar 2026 at 11:47, Rodrigo Vivi <[3]
> rodrigo.vivi@intel.com>
> >    > wrote:
>
> >
>
> >    >> On Wed, Mar 25, 2026 at 04:07:17PM +0200, Joonas Lahtinen wrote:
>
> >    >> > Quoting Yassine Mounir (2026-03-25 10:20:58)
>
> >    >> > > Hi Joonas,
>
> >    >> > > Thank you for the detailed feedback. I apologize for the
> double tag
> >    >> and the
>
> >    >> > > direct submission to Greg; I'm still refining my workflow.
>
> >    >> >
>
> >    >> > Ok, then to level set some expectations:
>
> >    >> >
>
> >    >> > Have you actually confirmed that the code you have submitted
> compiles
> >    >> > and does fix the bug you reported?
>
> >    >> >
>
> >    >> > Expectation is that you run the reproducer on top of drm-tip and
> see
> >    >> a
>
> >    >> > crash where you pick the dmesg/KASAN splat from, then you run
> drm-tip
> >    >> > with the patch you have prepared and there is no crash.
>
> >
>
> >    >> Exactly.
>
> >
>
> >    >> Before any further submission, please let's get back to square 0
> here.
> >
>
> >    >> 0. Please file a bug to our gilab/issues:
>
> >    >> [4]
> https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html
> >
>
> >    >> Do that against the drm-tip branch and provide all the log
> information
> >    >> from your experiments.
>
> >
>
> >    >> 1. If you have a proposed patch, also please confirm that it
> actually
> >    >> fix
>
> >    >> the issues that you are solving.
>
> >
>
> >    >> 2. Whenever using AI to help you with the code please ensure you
> comply
> >    >> with this:
>
> >
>
> >    >> Documentation/process/generated-content.rst
>
> >
>
> >    >> Thanks,
>
> >    >> Rodrigo.
>
> >
>
> >    >> >
>
> >    >> > Regards, Joonas
>
> >
> > References
> >
> >    Visible links
> >    1. mailto:sosohero200@gmail.com
> >    2. http://freedesktop.org/
> >    3. mailto:rodrigo.vivi@intel.com
> >    4.
> https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html
>

--0000000000003505e1064de0eafe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PHA+SGkgUm9kcmlnbyw8L3A+PHA+SGVyZSBpcyB0aGUgZGlyZWN0IGxp
bmsgdG8gdGhlIGNvbmZpZGVudGlhbCBpc3N1ZToNCjxzcGFuIGNsYXNzPSJnbWFpbC0iPjxzcGFu
IGNsYXNzPSJnbWFpbC1uZy1zdGFyLWluc2VydGVkIj48YSB0YXJnZXQ9Il9ibGFuayIgcmVsPSJu
b29wZW5lciIgaHJlZj0iaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tl
cm5lbC8tL3dvcmtfaXRlbXMvMTU4ODIiIGNsYXNzPSJnbWFpbC1uZy1zdGFyLWluc2VydGVkIj5o
dHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vd29ya19pdGVt
cy8xNTg4MjwvYT48L3NwYW4+PC9zcGFuPjwvcD48cD5UbyBhbnN3ZXIgeW91ciBjb25maXJtYXRp
b24gcG9pbnRzOjwvcD48b2wgc3RhcnQ9IjEiPjxsaT48cD5ZZXMsIEkgaGF2ZSBjb25maXJtZWQg
dGhhdCB0aGUgY29kZSBjb21waWxlcyBwZXJmZWN0bHkgb24gdGhlIGxhdGVzdCA8Y29kZT5kcm0t
dGlwPC9jb2RlPiAoY29tbWl0IGdiMmM2OWUwOSkuPC9wPjwvbGk+PGxpPjxwPkkgaGF2ZSB2ZXJp
ZmllZCB0aGF0IHRoZSBwYXRjaCBmaXhlcyB0aGUgYnVnOyB3aXRoIHRoZSBwYXRjaCBhcHBsaWVk
LCB0aGUgS0FTQU4gc2xhYi11c2UtYWZ0ZXItZnJlZSBubyBsb25nZXIgdHJpZ2dlcnMgZHVyaW5n
IHRoZSBzdHJlc3MgdGVzdHMuPC9wPjwvbGk+PGxpPjxwPkkgaGF2ZSByZWFkIGFuZCBmb2xsb3dl
ZCB0aGUgZ3VpZGVsaW5lcyBpbiA8Y29kZT5Eb2N1bWVudGF0aW9uL3Byb2Nlc3MvZ2VuZXJhdGVk
LWNvbnRlbnQucnN0PC9jb2RlPi48L3A+PC9saT48L29sPjxwPkFsbCBsb2dzIChLQVNBTiBzcGxh
dCBkZXNjcmlwdGlvbiBhbmQgdGhlIGZpeGVkIGRtZXNnKSBhbG9uZyB3aXRoIHRoZSBWMiBwYXRj
aCBhcmUgYXR0YWNoZWQgdG8gdGhlIEdpdExhYiBpc3N1ZS48L3A+PHA+QmVzdCByZWdhcmRzLMKg
PC9wPjxwPllhc3NpbmUgKHRvamkxKTwvcD48L2Rpdj48YnI+PGRpdiBjbGFzcz0iZ21haWxfcXVv
dGUgZ21haWxfcXVvdGVfY29udGFpbmVyIj48ZGl2IGRpcj0ibHRyIiBjbGFzcz0iZ21haWxfYXR0
ciI+T24gV2VkLCAyNSBNYXIgMjAyNiBhdCAxODoxNCwgUm9kcmlnbyBWaXZpICZsdDs8YSBocmVm
PSJtYWlsdG86cm9kcmlnby52aXZpQGludGVsLmNvbSI+cm9kcmlnby52aXZpQGludGVsLmNvbTwv
YT4mZ3Q7IHdyb3RlOjxicj48L2Rpdj48YmxvY2txdW90ZSBjbGFzcz0iZ21haWxfcXVvdGUiIHN0
eWxlPSJtYXJnaW46MHB4IDBweCAwcHggMC44ZXg7Ym9yZGVyLWxlZnQ6MXB4IHNvbGlkIHJnYigy
MDQsMjA0LDIwNCk7cGFkZGluZy1sZWZ0OjFleCI+T24gV2VkLCBNYXIgMjUsIDIwMjYgYXQgMDE6
MzA6NTJQTSAtMDQwMCwgWWFzc2luZSBNb3VuaXIgd3JvdGU6PGJyPg0KJmd0O8KgIMKgICZxdW90
O0hpIFJvZHJpZ28sIEkmIzM5O3ZlIHN1Ym1pdHRlZCB0aGUgaXNzdWUgYW5kIHRoZSBWMiBwYXRj
aCB1bmRlciAjMTU4ODIuIEkmIzM5O3ZlwqAgwqAgPGJyPg0KJmd0O8KgIMKgIG1hcmtlZCBpdCBh
cyBjb25maWRlbnRpYWwgYXMgaXQgYWRkcmVzc2VzIGEgcG90ZW50aWFsIFVBRiBzZWN1cml0eSBy
aXNrLsKgIMKgIMKgPGJyPg0KJmd0O8KgIMKgIExvb2tpbmcgZm9yd2FyZCB0byB5b3VyIHJldmll
dy4mcXVvdDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoDxicj4NCjxicj4NCkNvdWxkIHlvdSBwbGVhc2Ugc2hhcmUgYSBV
UkwgZm9yIHRoYXQuIEkgY291bGQgbm90IGZpbmQgaXQuPGJyPg0KPGJyPg0KJmd0O8KgIMKgIE9u
IFdlZCwgMjUgTWFyIDIwMjYgYXQgMTM6MzAsIFlhc3NpbmUgTW91bmlyICZsdDtbMV08YSBocmVm
PSJtYWlsdG86c29zb2hlcm8yMDBAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+c29zb2hlcm8y
MDBAZ21haWwuY29tPC9hPiZndDvCoCDCoCDCoCA8YnI+DQomZ3Q7wqAgwqAgd3JvdGU6wqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqA8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqA8YnI+DQomZ3Q7wqAgwqAgJmd0OyZndDsgJnF1b3Q7SGkgUm9kcmlnbyzCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCA8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqA8YnI+DQomZ3Q7wqAg
wqAgJmd0OyZndDsgSSBhbSBjdXJyZW50bHkgZm9sbG93aW5nIHlvdXIgaW5zdHJ1Y3Rpb25zIHRv
IGZpbGUgdGhlIGJ1ZyByZXBvcnQgb27CoCDCoCDCoCA8YnI+DQomZ3Q7wqAgwqAgJmd0OyZndDsg
R2l0TGFiLiBIb3dldmVyLCBteSBuZXcgR2l0TGFiIGFjY291bnQgaXMgcGVuZGluZyBtYW51YWwg
YXBwcm92YWwgZHVlwqAgwqAgwqA8YnI+DQomZ3Q7wqAgwqAgJmd0OyZndDsgdG8gdGhlIGN1cnJl
bnQgc3BhbSByZXN0cmljdGlvbnMgb24gWzJdPGEgaHJlZj0iaHR0cDovL2ZyZWVkZXNrdG9wLm9y
ZyIgcmVsPSJub3JlZmVycmVyIiB0YXJnZXQ9Il9ibGFuayI+ZnJlZWRlc2t0b3Aub3JnPC9hPi4g
SSBoYXZlwqAgwqAgwqAgwqAgwqAgwqAgPGJyPg0KJmd0O8KgIMKgICZndDsmZ3Q7IGNvbnRhY3Rl
ZCB0aGUgYWRtaW5zIGZvciBmdWxsIHBlcm1pc3Npb25zLsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDxicj4NCiZndDvCoCDC
oCAmZ3Q7Jmd0OyBJbiB0aGUgbWVhbnRpbWUsIEkgaGF2ZSBwcmVwYXJlZCBhbGwgdGhlIGxvZ3Mg
KEtBU0FOIHNwbGF0IGZyb20gdmFuaWxsYcKgIMKgPGJyPg0KJmd0O8KgIMKgICZndDsmZ3Q7IGRy
bS10aXAgYW5kIHRoZSBjbGVhbiBkbWVzZyBmcm9tIHRoZSBwYXRjaGVkIHZlcnNpb24pLiBBcyBz
b29uIGFzIHRoZcKgIMKgIMKgPGJyPg0KJmd0O8KgIMKgICZndDsmZ3Q7IGFjY291bnQgaXMgYWN0
aXZlLCBJIHdpbGwgcG9zdCB0aGUgbGluayBoZXJlLsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgPGJyPg0KJmd0O8KgIMKgICZndDsm
Z3Q7IFRoYW5rIHlvdSBmb3IgeW91ciBwYXRpZW5jZS4mcXVvdDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoDxicj4NCiZndDvCoCDCoCAmZ3Q7IE9uIFdlZCwgMjUgTWFyIDIwMjYgYXQgMTE6
NDcsIFJvZHJpZ28gVml2aSAmbHQ7WzNdPGEgaHJlZj0ibWFpbHRvOnJvZHJpZ28udml2aUBpbnRl
bC5jb20iIHRhcmdldD0iX2JsYW5rIj5yb2RyaWdvLnZpdmlAaW50ZWwuY29tPC9hPiZndDvCoCDC
oCDCoDxicj4NCiZndDvCoCDCoCAmZ3Q7IHdyb3RlOsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgPGJyPg0KJmd0O8KgIMKgICZn
dDsmZ3Q7IE9uIFdlZCwgTWFyIDI1LCAyMDI2IGF0IDA0OjA3OjE3UE0gKzAyMDAsIEpvb25hcyBM
YWh0aW5lbiB3cm90ZTrCoCDCoCDCoCDCoCDCoCA8YnI+DQomZ3Q7wqAgwqAgJmd0OyZndDsgJmd0
OyBRdW90aW5nIFlhc3NpbmUgTW91bmlyICgyMDI2LTAzLTI1IDEwOjIwOjU4KcKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDxicj4NCiZndDvCoCDCoCAmZ3Q7Jmd0OyAm
Z3Q7ICZndDsgSGkgSm9vbmFzLMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDxicj4N
CiZndDvCoCDCoCAmZ3Q7Jmd0OyAmZ3Q7ICZndDsgVGhhbmsgeW91IGZvciB0aGUgZGV0YWlsZWQg
ZmVlZGJhY2suIEkgYXBvbG9naXplIGZvciB0aGUgZG91YmxlIHRhZ8KgIMKgPGJyPg0KJmd0O8Kg
IMKgICZndDsmZ3Q7IGFuZCB0aGXCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoDxicj4NCiZndDvCoCDCoCAmZ3Q7Jmd0OyAmZ3Q7ICZndDsgZGlyZWN0IHN1Ym1pc3Np
b24gdG8gR3JlZzsgSSYjMzk7bSBzdGlsbCByZWZpbmluZyBteSB3b3JrZmxvdy7CoCDCoCDCoCDC
oCDCoCDCoCA8YnI+DQomZ3Q7wqAgwqAgJmd0OyZndDsgJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgPGJyPg0KJmd0O8KgIMKgICZndDsmZ3Q7
ICZndDsgT2ssIHRoZW4gdG8gbGV2ZWwgc2V0IHNvbWUgZXhwZWN0YXRpb25zOsKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDxicj4NCiZndDvCoCDCoCAmZ3Q7
Jmd0OyAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqA8YnI+DQomZ3Q7wqAgwqAgJmd0OyZndDsgJmd0OyBIYXZlIHlvdSBhY3R1YWxseSBjb25m
aXJtZWQgdGhhdCB0aGUgY29kZSB5b3UgaGF2ZSBzdWJtaXR0ZWQgY29tcGlsZXPCoCDCoDxicj4N
CiZndDvCoCDCoCAmZ3Q7Jmd0OyAmZ3Q7IGFuZCBkb2VzIGZpeCB0aGUgYnVnIHlvdSByZXBvcnRl
ZD/CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCA8YnI+DQomZ3Q7wqAgwqAgJmd0OyZndDsgJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgPGJyPg0KJmd0O8KgIMKgICZndDsmZ3Q7ICZndDsg
RXhwZWN0YXRpb24gaXMgdGhhdCB5b3UgcnVuIHRoZSByZXByb2R1Y2VyIG9uIHRvcCBvZiBkcm0t
dGlwIGFuZCBzZWXCoCDCoCA8YnI+DQomZ3Q7wqAgwqAgJmd0OyZndDsgYcKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgPGJyPg0KJmd0O8KgIMKgICZn
dDsmZ3Q7ICZndDsgY3Jhc2ggd2hlcmUgeW91IHBpY2sgdGhlIGRtZXNnL0tBU0FOIHNwbGF0IGZy
b20sIHRoZW4geW91IHJ1biBkcm0tdGlwwqAgwqA8YnI+DQomZ3Q7wqAgwqAgJmd0OyZndDsgJmd0
OyB3aXRoIHRoZSBwYXRjaCB5b3UgaGF2ZSBwcmVwYXJlZCBhbmQgdGhlcmUgaXMgbm8gY3Jhc2gu
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqA8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqA8YnI+DQomZ3Q7wqAg
wqAgJmd0OyZndDsgRXhhY3RseS7CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCA8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqA8YnI+DQomZ3Q7wqAgwqAgJmd0OyZndDsgQmVmb3JlIGFu
eSBmdXJ0aGVyIHN1Ym1pc3Npb24sIHBsZWFzZSBsZXQmIzM5O3MgZ2V0IGJhY2sgdG8gc3F1YXJl
IDAgaGVyZS7CoCDCoCA8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqA8YnI+DQomZ3Q7wqAgwqAgJmd0OyZndDsg
MC4gUGxlYXNlIGZpbGUgYSBidWcgdG8gb3VyIGdpbGFiL2lzc3VlczrCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDxicj4NCiZndDvCoCDCoCAmZ3Q7Jmd0
OyBbNF08YSBocmVmPSJodHRwczovL2RybS5wYWdlcy5mcmVlZGVza3RvcC5vcmcvaW50ZWwtZG9j
cy9ob3ctdG8tZmlsZS1pOTE1LWJ1Z3MuaHRtbCIgcmVsPSJub3JlZmVycmVyIiB0YXJnZXQ9Il9i
bGFuayI+aHR0cHM6Ly9kcm0ucGFnZXMuZnJlZWRlc2t0b3Aub3JnL2ludGVsLWRvY3MvaG93LXRv
LWZpbGUtaTkxNS1idWdzLmh0bWw8L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgPGJyPg0KJmd0O8KgIMKg
ICZndDsmZ3Q7IERvIHRoYXQgYWdhaW5zdCB0aGUgZHJtLXRpcCBicmFuY2ggYW5kIHByb3ZpZGUg
YWxsIHRoZSBsb2cgaW5mb3JtYXRpb27CoCDCoCA8YnI+DQomZ3Q7wqAgwqAgJmd0OyZndDsgZnJv
bSB5b3VyIGV4cGVyaW1lbnRzLsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oDxicj4NCiZndDvCoCDCoCAmZ3Q7Jmd0OyAxLiBJZiB5b3UgaGF2ZSBhIHByb3Bvc2VkIHBhdGNo
LCBhbHNvIHBsZWFzZSBjb25maXJtIHRoYXQgaXQgYWN0dWFsbHnCoCDCoCDCoDxicj4NCiZndDvC
oCDCoCAmZ3Q7Jmd0OyBmaXjCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoDxicj4NCiZndDvCoCDCoCAmZ3Q7Jmd0OyB0aGUgaXNzdWVzIHRoYXQgeW91IGFy
ZSBzb2x2aW5nLsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDxicj4NCiZndDvCoCDCoCAmZ3Q7Jmd0
OyAyLiBXaGVuZXZlciB1c2luZyBBSSB0byBoZWxwIHlvdSB3aXRoIHRoZSBjb2RlIHBsZWFzZSBl
bnN1cmUgeW91IGNvbXBsecKgIMKgPGJyPg0KJmd0O8KgIMKgICZndDsmZ3Q7IHdpdGggdGhpczrC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCA8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqA8
YnI+DQomZ3Q7wqAgwqAgJmd0OyZndDsgRG9jdW1lbnRhdGlvbi9wcm9jZXNzL2dlbmVyYXRlZC1j
b250ZW50LnJzdMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgPGJyPg0KJmd0O8KgIMKgICZndDsmZ3Q7IFRoYW5rcyzCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDxicj4NCiZndDvCoCDCoCAmZ3Q7
Jmd0OyBSb2RyaWdvLsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoDxicj4NCiZndDvCoCDCoCAmZ3Q7Jmd0OyAmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqA8YnI+DQomZ3Q7wqAgwqAg
Jmd0OyZndDsgJmd0OyBSZWdhcmRzLCBKb29uYXPCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oDxicj4NCiZndDsgPGJyPg0KJmd0OyBSZWZlcmVuY2VzPGJyPg0KJmd0OyA8YnI+DQomZ3Q7wqAg
wqAgVmlzaWJsZSBsaW5rczxicj4NCiZndDvCoCDCoCAxLiBtYWlsdG86PGEgaHJlZj0ibWFpbHRv
OnNvc29oZXJvMjAwQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPnNvc29oZXJvMjAwQGdtYWls
LmNvbTwvYT48YnI+DQomZ3Q7wqAgwqAgMi4gPGEgaHJlZj0iaHR0cDovL2ZyZWVkZXNrdG9wLm9y
Zy8iIHJlbD0ibm9yZWZlcnJlciIgdGFyZ2V0PSJfYmxhbmsiPmh0dHA6Ly9mcmVlZGVza3RvcC5v
cmcvPC9hPjxicj4NCiZndDvCoCDCoCAzLiBtYWlsdG86PGEgaHJlZj0ibWFpbHRvOnJvZHJpZ28u
dml2aUBpbnRlbC5jb20iIHRhcmdldD0iX2JsYW5rIj5yb2RyaWdvLnZpdmlAaW50ZWwuY29tPC9h
Pjxicj4NCiZndDvCoCDCoCA0LiA8YSBocmVmPSJodHRwczovL2RybS5wYWdlcy5mcmVlZGVza3Rv
cC5vcmcvaW50ZWwtZG9jcy9ob3ctdG8tZmlsZS1pOTE1LWJ1Z3MuaHRtbCIgcmVsPSJub3JlZmVy
cmVyIiB0YXJnZXQ9Il9ibGFuayI+aHR0cHM6Ly9kcm0ucGFnZXMuZnJlZWRlc2t0b3Aub3JnL2lu
dGVsLWRvY3MvaG93LXRvLWZpbGUtaTkxNS1idWdzLmh0bWw8L2E+PGJyPg0KPC9ibG9ja3F1b3Rl
PjwvZGl2Pg0K
--0000000000003505e1064de0eafe--
