Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yPlpJIdvgGkw8QIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 10:33:59 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED1E5CA281
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 10:33:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E877B10E3D3;
	Mon,  2 Feb 2026 09:33:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com
 [209.85.222.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 585F510E3D3
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Feb 2026 09:33:55 +0000 (UTC)
Received: by mail-ua1-f42.google.com with SMTP id
 a1e0cc1a2514c-948c1171392so127653241.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Feb 2026 01:33:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770024834; x=1770629634;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=QbYruy3lAFMrbCwJvxZm+t4TIrSb9rI+LX+VVlzOtrc=;
 b=fAL+mt5XSB23Mo8v2XswImQHhqztF6nYabLegWV37CM70yc+CQcj2UfYxPtw4by9jV
 fSVvcIs1e6B0tBZZ2kyIzSNzGbh/FTNn3uVT6UdEBGCXI0zfgZjodciaCkEMHlgZmEDw
 MT/wMbQ+JKCTqAgh9EQSR89Iizhas9RRr51SdEdfZk8cpGLSKhcMev6Un0vvmwBMW2Ct
 5cKWrCbOhfQvN7k9wiYZ9l4689QWqOJMqN//Z8D+6bEmUJ6OVMFdiF5Q1LLQgqcNlxKZ
 FszqLriXlYGN5Q5GwJDVWWrtrQpCo0tMM9eeZPV3yAFfap1pteE8oSC3SVyFXTX0CNvp
 IH9Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCWZvuNuhFVDauB0T8+KdsPAdPtYapDBAlBGWbGGjP6DmLH6y273AZtQi9ih6/mFuhn6PPdakNrSmm4=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yyqj0vpmFn5gXE46ZnzMldoiOo+7N86ukG5P7toUWpEGokgEcWA
 cG7uTjh9T0C2sLJNH7fQ+OyH3hYd5LDlqj2zF+XxuvWv2K6NFyWX1XBAqDnDhDGx
X-Gm-Gg: AZuq6aLxe/MqAnwbmOMcXt95GlFrZXz9M9R85mKMfmSGXkXpqUamUY7zs6nRz092a5B
 EOw0Jd6zm5PdI3e0AAkXGcjGCOBXFqcq70MeBpTRuIQ4g3N1FkytjEJ3zhkO+WicwkOlTNt3HTR
 JjCneTtjnM8SbjNQ3SQhQGTvOjiovKXulS5T4wBNF1bz8ixAVLrDx+/9uAHyeNRZPwj2ji3gT52
 XaTdAjlyjdoZJhXIEWjHEAo8jBKNRHO337nHkbzNhNXspLPsjxrgzAlF3eJleZF5y3qO1muo3D4
 3vdZHSpQALSvrhE1sPq08+deF3ijQeoTkIvw/9Ivu59L9Y/11iDkLvuW7wcGAa13qQ74AbBqNer
 rqLbyMWPZu4wHJnkrYj9oP4xuBZa4W1g6VusVImSSzhR+65sRtl8aEdXF9QNXw2R4Ux9XvCGioP
 fbv2UYaY740GNlgVBVoR3HssmuTdSkXcfbjcdBqi2x/9FcT5EQ3Qgd
X-Received: by 2002:a05:6102:442a:b0:5ec:f42c:79e4 with SMTP id
 ada2fe7eead31-5f8e23eca38mr3211644137.12.1770024833767; 
 Mon, 02 Feb 2026 01:33:53 -0800 (PST)
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com.
 [209.85.221.177]) by smtp.gmail.com with ESMTPSA id
 ada2fe7eead31-5f734eb4e75sm4057426137.9.2026.02.02.01.33.53
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 02 Feb 2026 01:33:53 -0800 (PST)
Received: by mail-vk1-f177.google.com with SMTP id
 71dfb90a1353d-560227999d2so1597125e0c.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Feb 2026 01:33:53 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCXWM9C2gEOE62Y7J+5SlIE0n6GUSALIFmBYvtplBIbCLy7Wl/Om+/URRSq6SHrX3lv3+gjeNJ9pMic=@lists.freedesktop.org
X-Received: by 2002:a05:6102:370a:b0:5f7:34b2:fb6d with SMTP id
 ada2fe7eead31-5f8e2375940mr3097405137.8.1770024833243; Mon, 02 Feb 2026
 01:33:53 -0800 (PST)
MIME-Version: 1.0
References: <8e2646fb71b148b3d38beb13f19b14e3634a1e1a.1769541024.git.geert+renesas@glider.be>
 <CY5PR11MB6366560330FE64F22ADF2C2EED91A@CY5PR11MB6366.namprd11.prod.outlook.com>
 <2dd8286a-a3c7-4a3d-bd5d-011966dc07f9@app.fastmail.com>
 <CY5PR11MB636685688893B7873C3BE85AED91A@CY5PR11MB6366.namprd11.prod.outlook.com>
 <ab91fa38-2f5c-4237-811e-854d442a71bb@hogyros.de>
 <CY5PR11MB63665464BE137AE70B0D47ADED9EA@CY5PR11MB6366.namprd11.prod.outlook.com>
 <aX0fYgU4FHIbsUET@intel.com>
 <CY5PR11MB636633FFBB10ECA1033BC114ED9DA@CY5PR11MB6366.namprd11.prod.outlook.com>
In-Reply-To: <CY5PR11MB636633FFBB10ECA1033BC114ED9DA@CY5PR11MB6366.namprd11.prod.outlook.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 2 Feb 2026 10:33:42 +0100
X-Gmail-Original-Message-ID: <CAMuHMdU+D_US5crXHCD-z4DhV+wkih_NyQ1McYtH9OdLLh=NFA@mail.gmail.com>
X-Gm-Features: AZwV_Qg0Tsg_etBysvYbWo2HXn2sIB71B9UWZ0PFICfOoIT8pKsy88K9pyjkojc
Message-ID: <CAMuHMdU+D_US5crXHCD-z4DhV+wkih_NyQ1McYtH9OdLLh=NFA@mail.gmail.com>
Subject: Re: [PATCH] misc/mei: INTEL_MEI should depend on X86 or DRM_XE
To: "Usyskin, Alexander" <alexander.usyskin@intel.com>
Cc: Simon Richter <Simon.Richter@hogyros.de>, Arnd Bergmann <arnd@arndb.de>, 
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:alexander.usyskin@intel.com,m:Simon.Richter@hogyros.de,m:arnd@arndb.de,m:geert+renesas@glider.be,m:gregkh@linuxfoundation.org,m:linux-kernel@vger.kernel.org,m:rodrigo.vivi@intel.com,m:geert@glider.be,s:lists@lfdr.de];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[geert@linux-m68k.org,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx,renesas];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,mail.gmail.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email]
X-Rspamd-Queue-Id: ED1E5CA281
X-Rspamd-Action: no action

Hi Sasha

On Sun, 1 Feb 2026 at 11:15, Usyskin, Alexander
<alexander.usyskin@intel.com> wrote:
> > > > > There are different usages of mei:
> > > > > - for discrete graphics xe/i915 will load mei via auxiliary device also on non
> > > > x86.
> > > > > - for integrated xe/i915 communicate with mei for on-chip CSME - this
> > > > scenario is x86 only.
> > > >
> > > > > IMO this should cover all:
> > > > > depends on X86 || DRM_XE!=n || DRM_I915!=n || COMPILE_TEST
> > > >
> > > > Is there discrete i915?
> > >
> > > DG1, Alchemist and some server cards are supported by i915
> > >
> > > > DRM_I915 depends on PCI && X86 (so "X86 || DRM_I915" is redundant,
> > > > which
> > > > is why I didn't add it in my version of the patch. If DRM_I915 is useful
> > > > on non-x86 we might want to change that as well.
> > >
> > > Let ask gfx people.
> >
> > Cc: intel-gfx@lists.freedesktop.org
> >
> > > Rodrigo, is DRM_I915 useful on non-x86?
> >
> > No, I really don't believe it would work out.
>
> In this case the below should be good, I suppose:
>
> depends on X86 || DRM_XE!=n || COMPILE_TEST

... which is exactly what I added in my patch. So life's good?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
