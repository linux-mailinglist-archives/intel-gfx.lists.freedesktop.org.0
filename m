Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YH+LEqDX72koGwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 23:39:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 947D447AB63
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 23:39:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E82A910E027;
	Mon, 27 Apr 2026 21:39:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="Ad+betp0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com
 [209.85.208.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5280410E2C9
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2026 21:39:40 +0000 (UTC)
Received: by mail-ed1-f53.google.com with SMTP id
 4fb4d7f45d1cf-67389cf78b0so18821398a12.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2026 14:39:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1777325978; x=1777930778;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=DjF1Jdn4Kp6xFyaBmAP2391GfFF2q7kuOVlruTChM90=;
 b=Ad+betp0zFZlIbtGBFWAso51GwA+oeW4XoBDIakDga8l2bD0BCz8nx6pQDu6+lMlvE
 rjCcuZbVezydlpYGUjOuJqy+Kmh+7B8/q70WRNRTfnRvdha+3/YzlYbDZEURM7+XML+n
 Z9QE9sZT85x2zka6SoGj0B8N1C5RXfcQ8iuZ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777325978; x=1777930778;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=DjF1Jdn4Kp6xFyaBmAP2391GfFF2q7kuOVlruTChM90=;
 b=bhzbOqnZvwgcrjzyFQcJF+oKDANqhcWdt3OsvAMzf31HtY59MlqRkAwXze3CpTTdh0
 YhD4h8Xbfq5YcRHPE5o/mniypukkTgrX+Jn/YQ4G8hMMXUla9856wCPBYeWI44aAlbU+
 NW8nQLBzv9MnynPo04pu85xPqZNIECEWzF9KBSKM93YQc8NzHveDhZ3VyuL2YxJ2qypv
 ZopQnMC2jRXC9/GFHb2SSP1T25EvfL5fWPDM5gesgvESEvhipuFk+2kf5HQ/GgsqyF4b
 crFEKZ1GoP909nD4RA/7AIbLGLxwW5kEXZk3o/oEY1Se1Bkp//xRo2VByLGcU49VKCbf
 ywxQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ+N7HXeiXz5sngNOXtbtUI+8eURT78DRLEnXUfDO5jD9CxrpHQxEUlDf2kCYdJnS/85HHEtOZodKRk=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyoU4VYZpBCxHNI7D3KtjmtCuHYLSivKEjH0rDdYEjnpL4r29+z
 3c0J6aj+nTwNeV9/9t2Uf1S0jxiKH9u9Z5aTZJ85rZBPVQFgW3oWavMmbJx7naeTufjCNEbFSGX
 s0TLp3F2fUg==
X-Gm-Gg: AeBDiesXeFYYcD17aPz02JvEHn/apXQQWM5jIQe5iz4XPml2ZFqNt7bu5x95KQrR+n7
 mfbNnWbqZaI+QuBLGzEy137gZmZhwBrBt9bawVUkIe1Pm+h0C6KbqJf4mwi47gzS6rJ360rMHOi
 QGhK4RZG1YH7myz4vAyz3E9lp7wNjsL7X4oT5U4ExU9ppLOQLR2oynGYInragjy/u9wW7Wp+y9r
 3zWR3OahhkFmY4zgEhBDdb4wiYwuRc+x1JRJzhUXFCLINcYKvxSyXSq8YnqoTJR8H9TzF26mV0d
 4GQ6ScPPRrUilGw8uZEK62tkfpEGdeEgmM+XHUaCDRVEWaBUAJo7i3f26kmGZL7ZfIOJY6ZIYEo
 tpjZXd/ENwWVBgZZgsuTHJi9hTrTOUEMQQ9O68uIOL+Sj+k+c4TBmKsLc0BN8GOzsDxxbalXyG6
 uztEtJyBOMBpzWEtaU5sqRH9/I9enV6hTJUGnlzfjeqX9E7r9L2fpSiL/bWSYxit916Img4rCr5
 MeLE9sKOUE=
X-Received: by 2002:a05:6402:538a:b0:670:8add:2b98 with SMTP id
 4fb4d7f45d1cf-679bb08f225mr153501a12.14.1777325978557; 
 Mon, 27 Apr 2026 14:39:38 -0700 (PDT)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com.
 [209.85.208.53]) by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-679b684345csm139015a12.17.2026.04.27.14.39.37
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Apr 2026 14:39:37 -0700 (PDT)
Received: by mail-ed1-f53.google.com with SMTP id
 4fb4d7f45d1cf-678a526f374so6513289a12.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2026 14:39:37 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AFNElJ+WAjQfIRwRFewLgIWGNGRZhvcfK3mX0bbNwZClju3SVTeBM27+4V+8t3M3dD/kHzewvP09PpeNtA8=@lists.freedesktop.org
X-Received: by 2002:a05:6402:5216:b0:679:1f4f:9d30 with SMTP id
 4fb4d7f45d1cf-679bb04c1a2mr179970a12.4.1777325976937; Mon, 27 Apr 2026
 14:39:36 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1777306795.git.chleroy@kernel.org>
 <289b424e243ba2c4139ea04009cf8b9c448a87ff.1777306795.git.chleroy@kernel.org>
 <CAHk-=whC1DZojwdMB1=sJWG2=dsCdfyU8N6tDE1qx50HRZ-WJQ@mail.gmail.com>
 <20260427222914.1cb2dd3b@pumpkin>
In-Reply-To: <20260427222914.1cb2dd3b@pumpkin>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 27 Apr 2026 14:39:20 -0700
X-Gmail-Original-Message-ID: <CAHk-=wg0SGbRYhdZ1kvJUTv1HEvmRJyQauFtBGV_fMcZVF8UpQ@mail.gmail.com>
X-Gm-Features: AVHnY4I-AxqvQRk42MegvhKMp_z4sSEpEzhzpgw2GyV2bV8dezSPoI0JTlwB18Y
Message-ID: <CAHk-=wg0SGbRYhdZ1kvJUTv1HEvmRJyQauFtBGV_fMcZVF8UpQ@mail.gmail.com>
Subject: Re: [RFC PATCH v1 5/9] uaccess: Switch to
 copy_{to/from}_user_partial() when relevant
To: David Laight <david.laight.linux@gmail.com>
Cc: "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>,
 Yury Norov <ynorov@nvidia.com>, 
 Andrew Morton <akpm@linux-foundation.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-alpha@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-snps-arc@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-mips@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, 
 kvm@vger.kernel.org, linux-riscv@lists.infradead.org, 
 linux-s390@vger.kernel.org, sparclinux@vger.kernel.org, 
 linux-um@lists.infradead.org, dmaengine@vger.kernel.org, 
 linux-efi@vger.kernel.org, linux-fsi@lists.ozlabs.org, 
 amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org, linux-wpan@vger.kernel.org, 
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org, 
 linux-spi@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-staging@lists.linux.dev, linux-serial@vger.kernel.org, 
 linux-usb@vger.kernel.org, xen-devel@lists.xenproject.org, 
 linux-fsdevel@vger.kernel.org, ocfs2-devel@lists.linux.dev, 
 bpf@vger.kernel.org, kasan-dev@googlegroups.com, linux-mm@kvack.org, 
 linux-x25@vger.kernel.org, rust-for-linux@vger.kernel.org, 
 linux-sound@vger.kernel.org, sound-open-firmware@alsa-project.org, 
 linux-csky@vger.kernel.org, linux-hexagon@vger.kernel.org, 
 loongarch@lists.linux.dev, linux-m68k@lists.linux-m68k.org, 
 linux-openrisc@vger.kernel.org, linux-parisc@vger.kernel.org, 
 linux-sh@vger.kernel.org, linux-arch@vger.kernel.org
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
X-Rspamd-Queue-Id: 947D447AB63
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[linux-foundation.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[linux-foundation.org];
	RCPT_COUNT_TWELVE(0.00)[48];
	FORGED_RECIPIENTS(0.00)[m:david.laight.linux@gmail.com,m:chleroy@kernel.org,m:ynorov@nvidia.com,m:akpm@linux-foundation.org,m:tglx@linutronix.de,m:linux-alpha@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-snps-arc@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mips@vger.kernel.org,m:linuxppc-dev@lists.ozlabs.org,m:kvm@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:linux-s390@vger.kernel.org,m:sparclinux@vger.kernel.org,m:linux-um@lists.infradead.org,m:dmaengine@vger.kernel.org,m:linux-efi@vger.kernel.org,m:linux-fsi@lists.ozlabs.org,m:amd-gfx@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-wpan@vger.kernel.org,m:netdev@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:linux-spi@vger.kernel.org,m:linux-media@vger.kernel.org,m:linux-staging@lists.linux.dev,m:linux-serial@vger.kernel.org,m:linux-usb@vger.kernel.org,m:xen-devel@lists.xenproject.org,m:linux-fsdevel@vger.kernel.org,m:ocfs2-devel@lists.linux.dev,m:bpf@vger.kernel.org,m:kas
 an-dev@googlegroups.com,m:linux-mm@kvack.org,m:linux-x25@vger.kernel.org,m:rust-for-linux@vger.kernel.org,m:linux-sound@vger.kernel.org,m:sound-open-firmware@alsa-project.org,m:linux-csky@vger.kernel.org,m:linux-hexagon@vger.kernel.org,m:loongarch@lists.linux.dev,m:linux-m68k@lists.linux-m68k.org,m:linux-openrisc@vger.kernel.org,m:linux-parisc@vger.kernel.org,m:linux-sh@vger.kernel.org,m:linux-arch@vger.kernel.org,m:davidlaightlinux@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[torvalds@linux-foundation.org,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_TO(0.00)[gmail.com];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[torvalds@linux-foundation.org,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[linux-foundation.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux-foundation.org:dkim,mail.gmail.com:mid]

On Mon, 27 Apr 2026 at 14:29, David Laight <david.laight.linux@gmail.com> wrote:
>
> I think there is a slight difference in that the normal copy_to_user()
> will determine the exact offset of the error by retrying with byte copies.

I have this dim memory that we decided that you can't reply on byte
exactness anyway, because not all architectures gave that guarantee
for the user copies.

But that thing came up many years ago, I might mis-remember.

            Linus
