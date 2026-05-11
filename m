Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UHDBMmbqAWpamQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 16:40:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF215105A8
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 16:40:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCFBC10E53F;
	Mon, 11 May 2026 14:40:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WOBBFwBp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com
 [209.85.128.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FD4510E6C3
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2026 11:58:22 +0000 (UTC)
Received: by mail-yw1-f172.google.com with SMTP id
 00721157ae682-7c23248f3a3so10698637b3.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2026 04:58:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778500701; cv=none;
 d=google.com; s=arc-20240605;
 b=HYbduX4EGgav8kof9ae29WbHMdyX0H4ecExTvcii0NnaLRFHPAXwmHZAJTrzzxCsz/
 d4LWFZLheOdDZm2FW+ReutBD6oFQUyC/+0+dlvEHrqq+O0LTW2ENg+CEUdV5id89cRj3
 ZO0MmBS7KBSZGKIB+HqgxYubxuZJ57Un+cJuooKoju0Zv+b0KWGcRcVQcKvC2HE7bgY/
 K7efyZ3le0fSXApYfbQdfCDXkEJ/4EeA27qsxQc20QLzuixksS/AxKeuPMNc2plxOyFA
 fnxlsD/ER2ktJ6V0pYjUFQCETIuXqVxgOxmcAw8QtDu0qyEtfLhxOYE1o/2gsclwhaaa
 vI9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=to:subject:message-id:date:from:mime-version:dkim-signature;
 bh=svYukfDqK3QrRdRVfkV17a9HSKJFLg9SQzDQTJ5q3EY=;
 fh=0mq9d1JUrcYsoTTkGHiTtQVhfUtVmM5T3dWmSoFUk5Y=;
 b=dvZAbdgnbZu8zfhptskHih12eFvScpmd2ROtT3ruB9B4pK1Gzu1D/gQXU15ljmwg+2
 M5nKLzhN1K2cb4z6OmPBU2w/dqxj1UtXYZfbDCWR1ioiIvQMe7CKhInnIBXjjV+fZMsi
 FcLdJrnm4vL2yZK+/1mun2TX1yeAuZLkslpvtBrtJdWDB9z95/OUFFl4jrBb1H4O+mlT
 teP4U03L2B936zsDTGfTSc4dyPsG5zFtuj+Vf/6M0spAyHmnA+OPshlcqA/3jRvQDCqT
 rTdX0/b6xdn6vfeNa10uM44jzC2pfgGaV4LvWAnFhOu1Pft8hNDB5ZToTPyDLcrrnXx8
 UrdQ==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1778500701; x=1779105501; darn=lists.freedesktop.org;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=svYukfDqK3QrRdRVfkV17a9HSKJFLg9SQzDQTJ5q3EY=;
 b=WOBBFwBpSTDdqr0APpZylRs3l+KUytYx18lXgjdw6pdEaTB9VPbJifXcrHcCe5Pmg1
 2AsS4UKmOGKxwh3BxOQxRpDpw0FrInGvmrJAM4qGNFu1pfD7Sm/0Cj7yBOVW0EDpjKhf
 2SSRN5/Z1lQAo2UNkFHYEYdp2Zx2kNgUHEOoqR/HZFXToRPRLGec+mAkAz1qgViqky3G
 12KIQV/Z5opDDoHLS5VdYD37IwGJ+x5a7i07fX9gWZxpF8JPYSe4haaw2KBuDQmhMzS0
 Woy0jqBvqC5eaCiT6pSjPLCzQ3+1bkRKLJ+r9ttp6tvKevVtXqNZqrAMgIpFjkQhxshy
 X0ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778500701; x=1779105501;
 h=to:subject:message-id:date:from:mime-version:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=svYukfDqK3QrRdRVfkV17a9HSKJFLg9SQzDQTJ5q3EY=;
 b=HzrGqTXfVQodm1Y+faZMFG2H4VrfPStvU+dP67BnwdXaT1XtZJ1LmxDv5vyd7ksQj9
 pTN8L1WZi9byIvNjlMNFEbXEQUkISF+PI1uv+fHUzRNaLtLKokWULQ5zTnO9njWNHtJn
 +dYC1VjP4HL7Q5lze2B2aDtRrP2ofFj/dUwLmLyxS1KMmlWu6EjkiAaZ9+t6ZKz1u2SD
 RpPGnaZPCkhYqB/IPwRnv9lxf9+nmjvFY5K+WId3l4Tg5U0W6KWew9O6ZWfAVR5DK4dX
 9jvJJ/GBSQIdncGk7FPjQ84PsUSm4iXcC+2Mmx+SpMA5iE2Lm2tLeGDn98Jk2ctw3yVH
 v2OA==
X-Gm-Message-State: AOJu0YxEO77kD4rGc/J/jtyi300CsLg/sE0aAKhIqQSBll3KeeGQsNvO
 fECgksLK7NUc34QU+/4MoGoxcRnx8lGfaQQMCQWQLplMUmeueEFdVE7PEiLYxF1nRrx2a2s2iUq
 +zLsRcdzhCht9lm/6eyWL+Y8PjI+oGIanFXmLCCE=
X-Gm-Gg: Acq92OEb5yelXtOK2d7bhjudbJlKw/nANzNQOP6BqN6VA1pjK8rLCM9Z9ay7gXGMp2j
 Eu/5ly1GtHtmeQVWjq22UT42mBK0ZAcrEAaI79uJ2S3jp0SxM4xx0lTC8ASNLkSKkPrTm3fISX2
 St0U7zbpJ33jYKIaCA2Fp63oe3OhAR4KJlMaOmn/PRvo1lFo27cVuCZrWg9HnZ9rVC2USdylieQ
 bchS028BusJxHjdV1hNlCZakyUc6rwFZSxm4vWDGewFqlnKbe6a1V9NcveEdyq6U7544cl0hmJG
 exio2CSeZCNcdNIqKDwkzXrpSLupSVbjf2wh0+ubnQ==
X-Received: by 2002:a05:690c:10:b0:7b4:657d:bd5d with SMTP id
 00721157ae682-7bdf5e89316mr266186717b3.30.1778500700664; Mon, 11 May 2026
 04:58:20 -0700 (PDT)
MIME-Version: 1.0
From: Daniel Burnfield <daniel.burnfield@gmail.com>
Date: Mon, 11 May 2026 07:58:09 -0400
X-Gm-Features: AVHnY4Jlenqa3ZDbsRlYWzbnfsFHJXwBPw_Kh3epQRBNhtORoXEQ41JqBwwwhaw
Message-ID: <CALQ5wkrXhFBYHYpj1WU6u8unXqwq7jhN9_gheMcc6m12xFG09w@mail.gmail.com>
Subject: Subject: i915 initialization failure on Apple Mac mini 6,1 and 7,1
 with kernel 6.12+
To: intel-gfx@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="0000000000007ef86c0651897690"
X-Mailman-Approved-At: Mon, 11 May 2026 14:40:35 +0000
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
X-Rspamd-Queue-Id: 7FF215105A8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_ONE(0.00)[1];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[danielburnfield@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,mail.gmail.com:mid]
X-Rspamd-Action: no action

--0000000000007ef86c0651897690
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

*Hardware:*

   - Apple Mac mini 6,1 (Late 2012), Intel HD Graphics 4000, chip-ID
   8086:0166
   - Apple Mac mini 7,1 (Late 2014), Intel HD Graphics 5000, chip-ID
   8086:0a26
   - Firmware: Apple EFI (UEFI)

*OS:* MX Linux 25.1 (Debian Trixie base)

*Problem:* i915 fails to initialize on kernel 6.12.x and later on both Mac
mini models. The system falls back to llvmpipe software rendering. The
driver field reports N/A in inxi output.

*Working kernel:* 6.1.0-42-amd64 (Debian Bookworm) initializes i915
correctly on both models and produces full hardware acceleration =E2=80=94 =
Mesa
Intel HD Graphics 4000/5000 with OpenGL 4.5.

*Key dmesg errors on 6.12 without nomodeset:*

DMAR-IR: Failed to enable irq remapping. You are vulnerable to
irq-injection attacks.
pci 0000:05:00.0: bridge window [mem size 0x00200000]: failed to assign
pci 0000:05:00.0: bridge window [mem size 0x00200000 64bit pref]:
failed to assign
pci 0000:05:06.0: bridge window [io size 0x1000]: failed to assign
wl: module verification failed: signature and/or required key missing
=E2=80=94 tainting kernel

*Notable:* No i915 messages appear in dmesg at all under 6.12 without
nomodeset =E2=80=94 the module never attempts to load. Under 6.1 with the s=
ame
hardware, i915 loads and initializes cleanly.

*With nomodeset:* System boots to GUI using llvmpipe. i915 is never
attempted.

*Workaround:* Boot with kernel 6.1.0-42-amd64 from Debian Bookworm without
nomodeset. Full hardware acceleration works correctly.

*Request:* Please investigate the PCI bridge resource assignment and
DMAR-IR regression affecting Apple EFI hardware on kernel 6.12+. These Mac
mini models are well within the supported hardware range for the i915
driver and worked correctly on earlier kernels.
Thank you
Dan Burnfield

--0000000000007ef86c0651897690
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p></p>
<p><strong>Hardware:</strong></p>
<ul>
<li>Apple Mac mini 6,1 (Late 2012), Intel HD Graphics 4000, chip-ID 8086:01=
66</li>
<li>Apple Mac mini 7,1 (Late 2014), Intel HD Graphics 5000, chip-ID 8086:0a=
26</li>
<li>Firmware: Apple EFI (UEFI)</li>
</ul>
<p><strong>OS:</strong> MX Linux 25.1 (Debian Trixie base)</p>
<p><strong>Problem:</strong> i915 fails to initialize on kernel 6.12.x and =
later on both Mac mini models. The system falls back to llvmpipe software r=
endering. The driver field reports N/A in inxi output.</p>
<p><strong>Working kernel:</strong> 6.1.0-42-amd64 (Debian Bookworm) initia=
lizes i915 correctly on both models and produces full hardware acceleration=
 =E2=80=94 Mesa Intel HD Graphics 4000/5000 with OpenGL 4.5.</p>
<p><strong>Key dmesg errors on 6.12 without nomodeset:</strong></p>
<pre><code>DMAR-IR: Failed to enable irq remapping. You are vulnerable to i=
rq-injection attacks.
pci 0000:05:00.0: bridge window [mem size 0x00200000]: failed to assign
pci 0000:05:00.0: bridge window [mem size 0x00200000 64bit pref]: failed to=
 assign
pci 0000:05:06.0: bridge window [io size 0x1000]: failed to assign
wl: module verification failed: signature and/or required key missing =E2=
=80=94 tainting kernel
</code></pre>
<p><strong>Notable:</strong> No i915 messages appear in dmesg at all under =
6.12 without nomodeset =E2=80=94 the module never attempts to load. Under 6=
.1 with the same hardware, i915 loads and initializes cleanly.</p>
<p><strong>With nomodeset:</strong> System boots to GUI using llvmpipe. i91=
5 is never attempted.</p>
<p><strong>Workaround:</strong> Boot with kernel 6.1.0-42-amd64 from Debian=
 Bookworm without nomodeset. Full hardware acceleration works correctly.</p=
>
<p><strong>Request:</strong> Please investigate the PCI bridge resource ass=
ignment and DMAR-IR regression affecting Apple EFI hardware on kernel 6.12+=
. These Mac mini models are well within the supported hardware range for th=
e i915 driver and worked correctly on earlier kernels.</p>
Thank you<div>Dan Burnfield</div></div>

--0000000000007ef86c0651897690--
