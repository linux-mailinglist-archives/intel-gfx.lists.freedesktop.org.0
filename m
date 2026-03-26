Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kMniHVtzymnG8gUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A9E35B741
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC25010E715;
	Mon, 30 Mar 2026 12:57:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="Zu+vi89M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
 [209.85.208.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4ACAA10E9E7
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 15:20:09 +0000 (UTC)
Received: by mail-ed1-f44.google.com with SMTP id
 4fb4d7f45d1cf-66b18af8c88so104957a12.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 08:20:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google; t=1774538407; x=1775143207;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=J5VwSVLrZu02gODrnOBU1zsYKEHs5QD8MREnECAvLw4=;
 b=Zu+vi89M47MDC8jnXkdQOj2YbFkUCY99g8KSe+NPFODOz3IeUNlxmSKY377zf7eljt
 3jNgZtxogvpFJNWuW+D58X0po7NnNcXfkRVHC9WRNy/VlMOPch8vZpQaJY5jHFYac2uB
 UuTfk6Av3elNARjTpYw1FswyXRBqY58TFgcMc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774538407; x=1775143207;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=J5VwSVLrZu02gODrnOBU1zsYKEHs5QD8MREnECAvLw4=;
 b=oGvS+90ZK1C1sn2bfTWc7WVh9ZEbgC5imxFZHkJaBqW+g0pvvUv4NW9m8kqS8ioY9F
 WRdJd8iOP1IqkEoaQiFOJeDjBv0N6gDP46foBWHYHvFbI74yXR17Dhciqg2DBL/8cYDJ
 MKSK5FqEnb/PtcxgD+gAuSsrCVwR1+3Yh6EZpBXOnpMepTyiJ5xrgyeTenHQw0kKfq5k
 u0thdIcW5lkRUcFWB0CEiT/vL/FL3ZoKK6AFZ7+z8ZS+BNAXMjOuwsSw/L4jzciw6w0Z
 FCI1aiQHVMHVdP3+OH3zfD5UEkhZTwd701mGu7aUky9BcUo4sOf1bpLhrI1clLF3uQCT
 EMng==
X-Forwarded-Encrypted: i=1;
 AJvYcCVJFUVpOitrl3jLBjzhVbwsCPBWkCCJVXQliLpTb2lFTU38nwVyUF8pKJR6YD4N4Rpv2zaM+W9/AZ8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz/Zkg6t5KSNFiBjviKgrUHkQedoU5gdRc1BlzP1yMQtS+A7Bqo
 pApZbIOaIcHwIkRkFxV154+ihA/p+wUwS5NkOEe4Nm7/NdTaVHpfjIHMBth5KKheKj25FqS5X2l
 r25COYCk=
X-Gm-Gg: ATEYQzxtw2GNMVwkBCCJMEPAYp7I/ji+eNrX6bjiQKXjrQmPAxe9UWe+fCnRXGn415O
 9PFataC1FtvdVaDOt8bsj2Lh44Qbnk/QJWuybJrstRNQ4JG7jz81huNqkrmC3RuQwaAmeswmodL
 CNmBW1CaGZUjfFXY0pLWCBoAX0Ccbl7wWu+M7YyVWSZmzeOnxJj3iOlfoeH0UovGUieUR/CW127
 Qm8ClCCUYZGNjWYAzjKyuYrACM7uZOP5zueBpZHvTyQO+DXibEM+5+NzEWujsdd+vY6r66Pad2R
 P6vwy4EKhe0biCYNBtaozFJCJNafPql4tDF+G8Wx6TqwzdNV0W5Gh5E2K/jubhl5Vt/0XH2eyTk
 eZTculPDYyn/QfW4KlifN83+0dNAJUqecV5kB+GnVTt/iakjctNPaOAm/jWcmFCvkgtXCZDwH3a
 giuUbNVBTWVC2+c2MAGu7d1a7k0hy/qafSwKdsI8H8s4SfsIteK42x3OXgY/4mU+BmyVtJGEs=
X-Received: by 2002:a05:6402:46c6:b0:668:599e:1035 with SMTP id
 4fb4d7f45d1cf-66a8261ddbdmr4971832a12.2.1774538407223; 
 Thu, 26 Mar 2026 08:20:07 -0700 (PDT)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com.
 [209.85.208.53]) by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-66ad6a4ec00sm1144093a12.23.2026.03.26.08.20.06
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 26 Mar 2026 08:20:06 -0700 (PDT)
Received: by mail-ed1-f53.google.com with SMTP id
 4fb4d7f45d1cf-668d4751a3bso1559645a12.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 08:20:06 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCXnF0br/WhYwqZsF/YxdXskpFBXedz012azaFUtq0rk5dyFDuBOmdTG/SI/uLhtvpNCDwJh5l8LF2c=@lists.freedesktop.org
X-Received: by 2002:a05:6402:46d1:b0:66a:199d:12a with SMTP id
 4fb4d7f45d1cf-66a826d6b44mr4587446a12.24.1774538406265; Thu, 26 Mar 2026
 08:20:06 -0700 (PDT)
MIME-Version: 1.0
References: <20260324151741.29338-1-sosohero200@gmail.com>
 <acUnQkniqECI0QVY@intel.com>
In-Reply-To: <acUnQkniqECI0QVY@intel.com>
From: Linus Torvalds <torvalds@linuxfoundation.org>
Date: Thu, 26 Mar 2026 08:19:49 -0700
X-Gmail-Original-Message-ID: <CAHk-=wg6JqsqxrdZi6ruuV0pf3PdYWo0tm_XBWe+r=NSnjvHRA@mail.gmail.com>
X-Gm-Features: AQROBzBqAMCueS_SeETvVBTTiKjI_km_I1doFSxMVYDSlm03kmy_SF7PQp61KJE
Message-ID: <CAHk-=wg6JqsqxrdZi6ruuV0pf3PdYWo0tm_XBWe+r=NSnjvHRA@mail.gmail.com>
Subject: Re: [PATCH v2] [PATCH v2] drm/i915/gem: Fix UAF race in
 eb_relocate_vma
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Yassine Mounir <sosohero200@gmail.com>, g@web.codeaurora.org,
 gregkh@linuxfoundation.org, 
 intel-gfx@lists.freedesktop.org, joonas.lahtinen@linux.intel.com, 
 rodrigo.vivi@intel.com, security@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 30 Mar 2026 12:57:43 +0000
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	DATE_IN_PAST(1.00)[93];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,web.codeaurora.org,linuxfoundation.org,lists.freedesktop.org,linux.intel.com,intel.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[torvalds@linuxfoundation.org,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ville.syrjala@linux.intel.com,m:sosohero200@gmail.com,m:g@web.codeaurora.org,m:gregkh@linuxfoundation.org,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:security@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[linuxfoundation.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[torvalds@linuxfoundation.org,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,mail.gmail.com:mid,linuxfoundation.org:dkim]
X-Rspamd-Queue-Id: E9A9E35B741
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 26 Mar 2026 at 05:32, Ville Syrj=C3=A4l=C3=A4
<ville.syrjala@linux.intel.com> wrote:
>
> Should we not do something like this?
>
> if (likely(vma && vma->vm =3D=3D vm))
>         vma =3D i915_vma_tryget(vma);
> + else
> +       vma =3D NULL;

That looks much better. Returning a vma that you looked up inside rcu
without gettin ga reference to it looks very wrong.

                  Linus
