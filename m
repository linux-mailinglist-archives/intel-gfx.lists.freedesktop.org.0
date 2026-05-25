Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kAMVG5F2FGokNgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 18:19:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB6F5CCB9E
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 18:19:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDC9F10E225;
	Mon, 25 May 2026 16:19:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=suse.com header.i=@suse.com header.b="Ky5AnU/i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
 [209.85.128.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7FD610E19A
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 May 2026 16:19:24 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id
 5b1f17b1804b1-49041e84237so26867515e9.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 May 2026 09:19:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.com; s=google; t=1779725963; x=1780330763; darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=6YA+/JJXQ9abERc/NViF0XyaL5qdJ2pUb4chRkVwshY=;
 b=Ky5AnU/iW+SQBM+YsY9krb6ebNwwtRlEWe9HD6RJ9RRNW9kCM29oC/Fw2QaLZ20lFZ
 g/qNqucBxq4cbP0RCOkUkMNXfrGHEd6nkIljQ5kH2upZxAjjWn1c0DaADKWbeYoGPjek
 kO96s396lx/JQwfA0rB2H7Dq++qKJiv5XGW32LFDk5hWeqdMU6RItPPyxkBoOoe8k12t
 e8K3F5+ohVjwHuOeMjR+CFXittBYmVZbDapOSgiIVhy/p8pdTbqtIz4nEGkH5WPVsz6t
 NTlFg3f6JB4K18tM+Acv1RBCUMHoHruSKdvDuQc9ODYaYYZEpxkuq+Jv7ftQJE3JLLDb
 w1eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1779725963; x=1780330763;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=6YA+/JJXQ9abERc/NViF0XyaL5qdJ2pUb4chRkVwshY=;
 b=RzqzieWBFQvRDbQ08/ncRE0KVCGTWWfrr64wUHJzWvBe9WpvoD5/t+l6/FBGBxvogs
 ABgV0fqBO1ChLPraGEkeh7yi1YoCj+MdJRPp6pIBNM92qSxLUDExLCC5eaQ/qLEkYNN7
 kJYLY4qNpu1eJTz+FhoORCAVzCQslmOqUTc7o8/qCWPjtBwFxqJ7DZbVU5M5VUn6eNpt
 LlJeDX+ll2AA+YuiK+G0Sx9PLYuyAkmE/Wzewbk3OqAuBH+2iiESzzBsyOgR/Grv5Pvs
 ZFK84I4sW1qZwkdxdoXaUiU6E4H/etsSPoxy6hlnT6N8efIWWdqlTx++xhNvWooZTIQL
 W7TQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ8fuC272e/xg/0zQVvKUlWXFxPIKkBsuXcEvXfqS7sp+O0nG91yl3GLwbYwlDfEjyBV6Bi5RE0gikQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzM6mG6Y2iy1HB9HytVTRBU4HvuN6US6KTOX0SF4ufFkV8hB111
 1g5o+KjolMDOtlX9QuSlUEhJn9BTzd4KjWCoz8XEzK/dGWIPXDgL5AWqadEpqn8/puw=
X-Gm-Gg: Acq92OGvZqEeO15fNre21WjuAdP2+U6A6LvT7oQYPy2eMR3nqaTZDkqGrVzVrC0q3yX
 qPDOkSgitC7IXDb1ElL5VqMXIVIBg3iaD1B3fJAjr2UJa7fk7VODB+cp2Mey9XJJTcwkmgfKCIK
 xGC7mK1W/+YtHRwALKp7Pw1oMLSWZE/25TG8JTQIRW4e6prj6ekcrY7Xd47CCr2rJYpLVsc88s4
 fhB08fP/yObsKJzWmM/olnaTxzt7WRCTYH4DgpKCV2klv0/0EenJu+nJiLsJVXTDLNMFjUv3gxR
 UTZ+D2U82x9mg/4ckorv/3faA13BsElBG+x9GLMi5Uk9jeVQu+yyoIOa2fFJ0Jz8mXoej/ydwA/
 PCMjLV92Qto+OqgJ31r4FZa8i8qnhUXMW3frd3KL1EXNnEG6uxniQfxTWhaQI3Uvk9Vr0lu9aF0
 yc53eUc/YYJJej/0HoDgOsMUm1/o7Xl7AR9jCb3B4cFuC8LM8q6cr6mvjjN8h0gGvAE+GpxR9fP
 MdAKg4QEOJqai1HwHjgv2tGPZcuj8b6CUEUMmlsnkHBSRmpbYIekYP0eUZqMXc2cU4ecw==
X-Received: by 2002:a05:600c:3b07:b0:490:f7c:b19 with SMTP id
 5b1f17b1804b1-490420f67f5mr197977845e9.0.1779725963153; 
 Mon, 25 May 2026 09:19:23 -0700 (PDT)
Received: from ?IPV6:2a00:1028:838d:271e:8e3b:4aff:fe4c:a100?
 (dynamic-2a00-1028-838d-271e-8e3b-4aff-fe4c-a100.ipv6.o2.cz.
 [2a00:1028:838d:271e:8e3b:4aff:fe4c:a100])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-49059cc9a91sm48939425e9.1.2026.05.25.09.19.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 May 2026 09:19:22 -0700 (PDT)
Message-ID: <a4c7ccee-6189-4c74-bad8-57d1438c7d8d@suse.com>
Date: Mon, 25 May 2026 18:19:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/11] moduleparam: Add seq_buf-based .get callback
 alongside .get_str
To: Kees Cook <kees@kernel.org>
Cc: Luis Chamberlain <mcgrof@kernel.org>, Pengpeng Hou
 <pengpeng@iscas.ac.cn>, Richard Weinberger <richard@nod.at>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Johannes Berg <johannes@sipsolutions.net>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Len Brown <lenb@kernel.org>,
 Corey Minyard <corey@minyard.net>, Gabriel Somlo <somlo@cmu.edu>,
 "Michael S. Tsirkin" <mst@redhat.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Bart Van Assche <bvanassche@acm.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Leon Romanovsky <leon@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans de Goede <hansg@kernel.org>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Hannes Reinecke <hare@suse.de>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Alan Stern <stern@rowland.harvard.edu>,
 Jason Wang <jasowang@redhat.com>, Xuan Zhuo <xuanzhuo@linux.alibaba.com>,
 =?UTF-8?Q?Eugenio_P=C3=A9rez?= <eperezma@redhat.com>,
 Jason Baron <jbaron@akamai.com>, Jim Cromie <jim.cromie@gmail.com>,
 Tiwei Bie <tiwei.btw@antgroup.com>, Benjamin Berg <benjamin.berg@intel.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 "David E. Box" <david.e.box@linux.intel.com>,
 "Maciej W. Rozycki" <macro@orcam.me.uk>,
 Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
 Peter Zijlstra <peterz@infradead.org>, Heiko Carstens <hca@linux.ibm.com>,
 Vasily Gorbik <gor@linux.ibm.com>, Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Thomas Gleixner <tglx@kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Dave Hansen <dave.hansen@linux.intel.com>, x86@kernel.org,
 "H. Peter Anvin" <hpa@zytor.com>, Vinod Koul <vkoul@kernel.org>,
 Frank Li <Frank.Li@kernel.org>, Daniel Gomez <da.gomez@kernel.org>,
 Sami Tolvanen <samitolvanen@google.com>, Aaron Tomlin <atomlin@atomlin.com>,
 Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>,
 Dmitry Vyukov <dvyukov@google.com>, Andrew Morton
 <akpm@linux-foundation.org>, John Johansen <john.johansen@canonical.com>,
 Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>,
 "Serge E. Hallyn" <serge@hallyn.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Georgia Garcia <georgia.garcia@canonical.com>, kvm@vger.kernel.org,
 dmaengine@vger.kernel.org, linux-modules@vger.kernel.org,
 kasan-dev@googlegroups.com, linux-mm@kvack.org, apparmor@lists.ubuntu.com,
 linux-security-module@vger.kernel.org, linux-um@lists.infradead.org,
 linux-acpi@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 qemu-devel@nongnu.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org,
 linux-media@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-pm@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-serial@vger.kernel.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 virtualization@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-arch@vger.kernel.org, netdev@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-hardening@vger.kernel.org
References: <20260521133315.work.845-kees@kernel.org>
 <20260521133326.2465264-6-kees@kernel.org>
Content-Language: en-US
From: Petr Pavlu <petr.pavlu@suse.com>
In-Reply-To: <20260521133326.2465264-6-kees@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[suse.com,quarantine];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[suse.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kees@kernel.org,m:mcgrof@kernel.org,m:pengpeng@iscas.ac.cn,m:richard@nod.at,m:anton.ivanov@cambridgegreys.com,m:johannes@sipsolutions.net,m:rafael@kernel.org,m:lenb@kernel.org,m:corey@minyard.net,m:somlo@cmu.edu,m:mst@redhat.com,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:bvanassche@acm.org,m:jgg@ziepe.ca,m:leon@kernel.org,m:laurent.pinchart@ideasonboard.com,m:hansg@kernel.org,m:mchehab@kernel.org,m:bhelgaas@google.com,m:hare@suse.de,m:James.Bottomley@HansenPartnership.com,m:martin.petersen@oracle.com,m:daniel.lezcano@kernel.org,m:rui.zhang@intel.com,m:lukasz.luba@arm.com,m:gregkh@linuxfoundation.org,m:jirislaby@kernel.org,m:stern@rowland.harvard.edu,m:jasowang@redhat.com,m:xuanzhuo@linux.alibaba.com,m:eperezma@redhat.com,m:jbaron@akamai.com,m:jim.cromie@gmail.com,m:tiwei.btw@antgroup.com,m:benjamin.berg@intel.com,m:ilpo.jarvinen@linux.intel.com,m:dav
 id.e.box@linux.intel.com,m:macro@orcam.me.uk,m:srinivas.pandruvada@linux.intel.com,m:peterz@infradead.org,m:hca@linux.ibm.com,m:gor@linux.ibm.com,m:seanjc@google.com,m:pbonzini@redhat.com,m:tglx@kernel.org,m:mingo@redhat.com,m:bp@alien8.de,m:dave.hansen@linux.intel.com,m:x86@kernel.org,m:hpa@zytor.com,m:vkoul@kernel.org,m:Frank.Li@kernel.org,m:da.gomez@kernel.org,m:samitolvanen@google.com,m:atomlin@atomlin.com,m:glider@google.com,m:elver@google.com,m:dvyukov@google.com,m:akpm@linux-foundation.org,m:john.johansen@canonical.com,m:paul@paul-moore.com,m:jmorris@namei.org,m:serge@hallyn.com,m:andriy.shevchenko@linux.intel.com,m:georgia.garcia@canonical.com,m:kvm@vger.kernel.org,m:dmaengine@vger.kernel.org,m:linux-modules@vger.kernel.org,m:kasan-dev@googlegroups.com,m:linux-mm@kvack.org,m:apparmor@lists.ubuntu.com,m:linux-security-module@vger.kernel.org,m:linux-um@lists.infradead.org,m:linux-acpi@vger.kernel.org,m:openipmi-developer@lists.sourceforge.net,m:qemu-devel@nongnu.org,m:dri-deve
 l@lists.freedesktop.org,m:linux-rdma@vger.kernel.org,m:linux-media@vger.kernel.org,m:linux-pci@vger.kernel.org,m:linux-scsi@vger.kernel.org,m:linux-pm@vger.kernel.org,m:linuxppc-dev@lists.ozlabs.org,m:linux-serial@vger.kernel.org,m:linux-usb@vger.kernel.org,m:usb-storage@lists.one-eyed-alien.net,m:virtualization@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:linux-arch@vger.kernel.org,m:netdev@vger.kernel.org,m:linux-fsdevel@vger.kernel.org,m:linux-hardening@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[petr.pavlu@suse.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,iscas.ac.cn,nod.at,cambridgegreys.com,sipsolutions.net,minyard.net,cmu.edu,redhat.com,linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,acm.org,ziepe.ca,ideasonboard.com,google.com,suse.de,HansenPartnership.com,oracle.com,arm.com,linuxfoundation.org,rowland.harvard.edu,linux.alibaba.com,akamai.com,antgroup.com,orcam.me.uk,infradead.org,linux.ibm.com,alien8.de,zytor.com,atomlin.com,linux-foundation.org,canonical.com,paul-moore.com,namei.org,hallyn.com,vger.kernel.org,googlegroups.com,kvack.org,lists.ubuntu.com,lists.infradead.org,lists.sourceforge.net,nongnu.org,lists.freedesktop.org,lists.ozlabs.org,lists.one-eyed-alien.net,lists.linux.dev];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	RCPT_COUNT_GT_50(0.00)[98];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[petr.pavlu@suse.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[suse.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:email,suse.com:mid,suse.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 1CB6F5CCB9E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 5/21/26 3:33 PM, Kees Cook wrote:
> Add a new struct kernel_param_ops::get callback whose signature
> takes a struct seq_buf instead of a raw char buffer:
> 
>   int (*get)(struct seq_buf *sb, const struct kernel_param *kp);
> 
> The previously-legacy .get field is now .get_str (char *buffer);
> .get is the new seq_buf-aware form.  param_attr_show() prefers .get
> when set, otherwise falls back to .get_str.  WARN_ON_ONCE() if both
> are set.  Return contract for .get:
> 
>   < 0 : errno propagated to userspace; seq_buf contents discarded
>   = 0 : success; length derived from seq_buf_used()
>   > 0 : forbidden; the dispatcher WARN_ON_ONCE()s and treats as 0
> 
> The default policy on seq_buf_has_overflowed() is silent truncation,
> matching scnprintf()/sysfs_emit() behaviour.  Callbacks that want a
> specific overflow errno can check seq_buf_has_overflowed() and
> return their preferred error.
> 
> No callbacks use .get yet; the legacy path is still the only one in use
> after this commit. A subsequent commit teaches DEFINE_KERNEL_PARAM_OPS
> to route initializers by type.
> 
> Signed-off-by: Kees Cook <kees@kernel.org>

Reviewed-by: Petr Pavlu <petr.pavlu@suse.com>

-- Petr
