Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4KZjAbJ3FGokNgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 18:24:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A964C5CCD03
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 18:24:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D411510E3B2;
	Mon, 25 May 2026 16:24:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=suse.com header.i=@suse.com header.b="VZHNJ2GT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AE5B10E3B2
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 May 2026 16:24:12 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id
 ffacd0b85a97d-44a14580111so7325118f8f.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 May 2026 09:24:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.com; s=google; t=1779726251; x=1780331051; darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=WThGrJlj0+d9TTzzXLAp8aZigkvM5HszOOE/MfwSIgg=;
 b=VZHNJ2GTrl43XFDDSt9YfqTICh80PrFMFg2kLEQCoEUGMDLoNCvANX0XPmCJFg71j+
 JPL1y+JcB0IF3oqHslsDrCAHCGSSoA/qepLvJUw/xxAeFReDhC5JyG1IAXoB6SM/ww4j
 3SPj70IoeFKHx0iNO/d/yMq4Lb8DKSzYolG1QRyUVrSVqWyp3WgyrFWm24q+hs1eMhpm
 4IiU3H86re1AB90ThjoUjNtM+X6Ux0L6AVfQ9Vhl0WyQcOm1LnRLZaISvHiLvswOKmQH
 8M9IDEiZ38gwN2qzwHnRoYDQcetU566KapQi/hFdJFU9oKwkZDjQtXk2BGYouocCEO+Y
 HdQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1779726251; x=1780331051;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=WThGrJlj0+d9TTzzXLAp8aZigkvM5HszOOE/MfwSIgg=;
 b=NEMcRoMz9OVqdxf4rXCTwS9+MH86tTQWPdtof+kK8I/d5AfyM3vDjkDkcgE+OxxX2s
 hV44hz6hc3zWIsxcStarMh2TpQdEpket26l094FTz21/JqE6DgOVyAaOcR16IEEDWel0
 yMG8PQoLXxwDq2jHGHRQA0lIgcnKhwSSAQ9izI0+KR+1QP0l9cO5+svH91M8zGyjWn9X
 +OUPRMW2Ry/HCyabwmQHuBHA8jAwjbRo5ZR85beOaqdD+yDdByrwVD0I2zqP90P8iQGV
 tXY08zOusO7hOTZC2NHVDM3M5/t95m7qVqdJE+MM12aDOBrV815V3MzgiDzXMDQCf6uV
 iQBQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ/CInhEiYNw4dD1sWLV0uZ8YjB2kMnm+YMXK+cJxtiZbUcdqMOv4irjYe58ps7NZiuuqNdPRgPMyLo=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz3f+wsghzp5BIZfiamrmlrKA2ZlfG26O1qIiWOZmsazVnV0T6G
 XOe6p0kDl0T4xmF/qOO1KsOFMAxXBJ1StfIzpWah7ChHNmywVK85ivoBgfbkp9mX/uM=
X-Gm-Gg: Acq92OFI0et6rc455mM4SYTS2pg/7ekYZqu9GRpinIXxll9QPy9M2zZZRUaaZdHXCkc
 nen+/YD6TzP61nXALL/ULVoJsX255XwlfYDrzdFWmL/qoY7+O7YJyw3lkfc/HABe61Z11X9WSnB
 5pwWKPrwVNlrsDD1+7fJf8UI0rIA13m+8ILwZDtAANAuAqH6p1jk3fAgkpbh86LY3PiAMl3Pm9s
 yHCcNhXytxkodI+3lQzlcs+XShV6HqacsDls2hz9eHfZ/Tv4806hET6QAV8YOoMBh9ya+BK2D71
 URytSqfWbOZr1cySB9MkHPk2tVbvk/o+LZOTbGugCbyggPh0phD8kCvRnGIHfrpF0wh5QLWtjXP
 AmA54qealbz3RotuNxUp6iP2QFWc+/ZiANn8xQxsPTVm5bhOZEj5AkoFW9VEQ61riBnowUhLap2
 q81KS071aI9rhuBrZbpzv+wqKtwEHncLlKo0oBR1l11mb5ROZkhIGLwHuBCMHjfirjetX3y7EPY
 05KL7ecd5ge6sVikEF8UGXV4yNnBPYU70lYOssvvBVx6YU2wQi6xIIbw7Azhg2k3tOORA==
X-Received: by 2002:a05:6000:26cf:b0:45e:b215:12e9 with SMTP id
 ffacd0b85a97d-45eb368903emr24724531f8f.6.1779726250728; 
 Mon, 25 May 2026 09:24:10 -0700 (PDT)
Received: from ?IPV6:2a00:1028:838d:271e:8e3b:4aff:fe4c:a100?
 (dynamic-2a00-1028-838d-271e-8e3b-4aff-fe4c-a100.ipv6.o2.cz.
 [2a00:1028:838d:271e:8e3b:4aff:fe4c:a100])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-45eb6d47b82sm28202483f8f.19.2026.05.25.09.24.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 May 2026 09:24:10 -0700 (PDT)
Message-ID: <4e54ae4a-4f7b-451d-9b37-97f30b8fefba@suse.com>
Date: Mon, 25 May 2026 18:24:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/11] moduleparam: Route DEFINE_KERNEL_PARAM_OPS get
 pointer via _Generic
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
 <20260521133326.2465264-7-kees@kernel.org>
Content-Language: en-US
From: Petr Pavlu <petr.pavlu@suse.com>
In-Reply-To: <20260521133326.2465264-7-kees@kernel.org>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,suse.com:email,suse.com:mid,suse.com:dkim]
X-Rspamd-Queue-Id: A964C5CCD03
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 5/21/26 3:33 PM, Kees Cook wrote:
> Make the DEFINE_KERNEL_PARAM_OPS family route their _get argument to
> either .get (struct seq_buf *) or .get_str (char *) at compile time
> based on the pointer's actual function signature. Two helper macros
> do the routing:
> 
>   _KERNEL_PARAM_OPS_GET     - return the pointer if it has the seq_buf
>                               signature, otherwise NULL of that type
>   _KERNEL_PARAM_OPS_GET_STR - mirror image for the char * signature
> 
> Both use _Generic; only the two valid function-pointer types are
> listed, so any third-party type is a compile error rather than
> silently falling through.
> 
> Now a callback whose body has been migrated from char * to struct
> seq_buf * needs no change at its kernel_param_ops initialization site,
> because the macro picks up the new type automatically and assigns to
> the correct field.
> 
> Signed-off-by: Kees Cook <kees@kernel.org>
> ---
>  include/linux/moduleparam.h | 33 ++++++++++++++++++++++++++-------
>  1 file changed, 26 insertions(+), 7 deletions(-)
> 
> diff --git a/include/linux/moduleparam.h b/include/linux/moduleparam.h
> index c52120f6ac28..795bc7c654ef 100644
> --- a/include/linux/moduleparam.h
> +++ b/include/linux/moduleparam.h
> @@ -85,15 +85,32 @@ struct kernel_param_ops {
>   *
>   *   static DEFINE_KERNEL_PARAM_OPS(my_ops, my_set, my_get);
>   *
> - * Routing the @_set and @_get function pointers through the macro
> - * (rather than naming the struct fields at every call site) lets the
> - * field layout change in one place when callbacks are migrated to a
> - * new signature.
> + * @_get may be either of:
> + *   int (*)(struct seq_buf *, const struct kernel_param *) (seq_buf)
> + *   int (*)(char *, const struct kernel_param *)           (legacy)
> + *
> + * The macro uses _Generic to route the function pointer to the
> + * matching field (.get or .get_str) at compile time, leaving the
> + * other field NULL. Each helper matches the wrong prototype signature
> + * and returns NULL, falling through to the default branch otherwise;
> + * if @_get has neither expected signature the assignment to the
> + * fields gets a normal compile-time type-mismatch error.
>   */
> +#define _KERNEL_PARAM_OPS_GET(_get)					\
> +	_Generic((_get),						\
> +	    int (*)(char *, const struct kernel_param *): NULL,		\
> +	    default: (_get))
> +
> +#define _KERNEL_PARAM_OPS_GET_STR(_get)					\
> +	_Generic((_get),						\
> +	    int (*)(struct seq_buf *, const struct kernel_param *): NULL, \
> +	    default: (_get))
> +
>  #define DEFINE_KERNEL_PARAM_OPS(_name, _set, _get)			\
>  	const struct kernel_param_ops _name = {				\
>  		.set = (_set),						\
> -		.get_str = (_get),					\
> +		.get = _KERNEL_PARAM_OPS_GET(_get),			\
> +		.get_str = _KERNEL_PARAM_OPS_GET_STR(_get),		\
>  	}
>  
>  /* As DEFINE_KERNEL_PARAM_OPS, with KERNEL_PARAM_OPS_FL_NOARG set. */
> @@ -101,14 +118,16 @@ struct kernel_param_ops {
>  	const struct kernel_param_ops _name = {				\
>  		.flags = KERNEL_PARAM_OPS_FL_NOARG,			\
>  		.set = (_set),						\
> -		.get_str = (_get),					\
> +		.get = _KERNEL_PARAM_OPS_GET(_get),			\
> +		.get_str = _KERNEL_PARAM_OPS_GET_STR(_get),		\
>  	}
>  
>  /* As DEFINE_KERNEL_PARAM_OPS, with an additional .free callback. */
>  #define DEFINE_KERNEL_PARAM_OPS_FREE(_name, _set, _get, _free)		\
>  	const struct kernel_param_ops _name = {				\
>  		.set = (_set),						\
> -		.get_str = (_get),					\
> +		.get = _KERNEL_PARAM_OPS_GET(_get),			\
> +		.get_str = _KERNEL_PARAM_OPS_GET_STR(_get),		\
>  		.free = (_free),					\
>  	}
>  

Reviewed-by: Petr Pavlu <petr.pavlu@suse.com>

-- Petr
