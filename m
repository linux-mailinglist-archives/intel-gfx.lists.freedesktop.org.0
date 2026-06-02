Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UN6vKxC+Hmr1KAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 13:27:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D38E62D755
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 13:27:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9511A10EF8C;
	Tue,  2 Jun 2026 11:27:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AiCd+as0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E60EA10EF8B;
 Tue,  2 Jun 2026 11:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780399629; x=1811935629;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=vFe0YHJbZeLES+sUauMUh5hZ46dD8ew9Ej6lDFLoT9Q=;
 b=AiCd+as03z8JI0M3Tj2YhyIJtEf/1xYRptnl2Rojlyp8DjaDezbkIZBd
 g/zzdmxqJZPRBuoRAh1hPgdf2pGg37uc51dN0t6aZojMZ+uqcMIwTWTyK
 VLrEONVj2k6ETI9bERCjxtlZBerWW+6F6I9UXq9QNbsT+V9eZsymVe8Ql
 x+RkPjckJ1FgoqWc22nidpp7TLfdFVbr++uCZdWAHCTborfGhl64P8Z0F
 TKfs7JXGV1wezDnPtaKtS6NFx4zqaJ4UHpcD6kWi9sguLEntwoUxMpU6/
 nKSqOCBwUZkrC+IcztggUECzS0BWb8L7knL35TMb8zFytHHi7f5WjhWbC g==;
X-CSE-ConnectionGUID: SuwkAiTrQYuK/QrRj8b5fw==
X-CSE-MsgGUID: VxOfMnlDTcySMDcU/EIKnw==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="84804992"
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="84804992"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 04:27:07 -0700
X-CSE-ConnectionGUID: 57WJuzJhQk+bJIT4F8AZnw==
X-CSE-MsgGUID: InV+5AxmRSKrEz4WoNh7bQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="240879149"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.229])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 04:26:48 -0700
Date: Tue, 2 Jun 2026 14:26:46 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Kees Cook <kees@kernel.org>
Cc: Luis Chamberlain <mcgrof@kernel.org>,
 Pengpeng Hou <pengpeng@iscas.ac.cn>, stable@vger.kernel.org,
 Petr Pavlu <petr.pavlu@suse.com>, Richard Weinberger <richard@nod.at>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Johannes Berg <johannes@sipsolutions.net>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Len Brown <lenb@kernel.org>, Corey Minyard <corey@minyard.net>,
 Gabriel Somlo <somlo@cmu.edu>, "Michael S. Tsirkin" <mst@redhat.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Bart Van Assche <bvanassche@acm.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Leon Romanovsky <leon@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans de Goede <hansg@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Hannes Reinecke <hare@suse.de>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Daniel Lezcano <daniel.lezcano@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Alan Stern <stern@rowland.harvard.edu>,
 Jason Wang <jasowang@redhat.com>, Xuan Zhuo <xuanzhuo@linux.alibaba.com>,
 Eugenio =?iso-8859-1?Q?P=E9rez?= <eperezma@redhat.com>,
 Jason Baron <jbaron@akamai.com>, Jim Cromie <jim.cromie@gmail.com>,
 Tiwei Bie <tiwei.btw@antgroup.com>,
 Benjamin Berg <benjamin.berg@intel.com>,
 Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 "David E. Box" <david.e.box@linux.intel.com>,
 "Maciej W. Rozycki" <macro@orcam.me.uk>,
 Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
 Peter Zijlstra <peterz@infradead.org>, Heiko Carstens <hca@linux.ibm.com>,
 Vasily Gorbik <gor@linux.ibm.com>, Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>,
 Thomas Gleixner <tglx@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>,
 Dave Hansen <dave.hansen@linux.intel.com>, x86@kernel.org,
 "H. Peter Anvin" <hpa@zytor.com>, Vinod Koul <vkoul@kernel.org>,
 Frank Li <Frank.Li@kernel.org>, Daniel Gomez <da.gomez@kernel.org>,
 Sami Tolvanen <samitolvanen@google.com>,
 Aaron Tomlin <atomlin@atomlin.com>,
 Alexander Potapenko <glider@google.com>,
 Marco Elver <elver@google.com>, Dmitry Vyukov <dvyukov@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 John Johansen <john.johansen@canonical.com>,
 Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>,
 "Serge E. Hallyn" <serge@hallyn.com>,
 Georgia Garcia <georgia.garcia@canonical.com>, kvm@vger.kernel.org,
 dmaengine@vger.kernel.org, linux-modules@vger.kernel.org,
 kasan-dev@googlegroups.com, linux-mm@kvack.org,
 apparmor@lists.ubuntu.com, linux-security-module@vger.kernel.org,
 linux-um@lists.infradead.org, linux-acpi@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, qemu-devel@nongnu.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-rdma@vger.kernel.org, linux-media@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-pm@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-serial@vger.kernel.org, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net,
 virtualization@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-arch@vger.kernel.org, netdev@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-hardening@vger.kernel.org
Subject: Re: [PATCH 01/11] params: bound array element output to the caller's
 page buffer
Message-ID: <ah699hwLxIIOZ0-7@ashevche-desk.local>
References: <20260521133315.work.845-kees@kernel.org>
 <20260521133326.2465264-1-kees@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260521133326.2465264-1-kees@kernel.org>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
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
X-Rspamd-Queue-Id: 0D38E62D755
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_GT_50(0.00)[99];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[kernel.org,iscas.ac.cn,vger.kernel.org,suse.com,nod.at,cambridgegreys.com,sipsolutions.net,minyard.net,cmu.edu,redhat.com,linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,acm.org,ziepe.ca,ideasonboard.com,google.com,suse.de,hansenpartnership.com,oracle.com,arm.com,linuxfoundation.org,rowland.harvard.edu,linux.alibaba.com,akamai.com,antgroup.com,orcam.me.uk,infradead.org,linux.ibm.com,alien8.de,zytor.com,atomlin.com,linux-foundation.org,canonical.com,paul-moore.com,namei.org,hallyn.com,googlegroups.com,kvack.org,lists.ubuntu.com,lists.infradead.org,lists.sourceforge.net,nongnu.org,lists.freedesktop.org,lists.ozlabs.org,lists.one-eyed-alien.net,lists.linux.dev];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ashevche-desk.local:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim]
X-Rspamd-Action: no action

On Thu, May 21, 2026 at 06:33:14AM -0700, Kees Cook wrote:
> 
> param_array_get() appends each element's string representation into the
> shared sysfs page buffer by passing buffer + off to the element getter.
> 
> That works for getters that only write a small bounded string, but
> param_get_charp() and similar helpers format against PAGE_SIZE from the
> pointer they receive. Once off is non-zero, an element getter can
> therefore write past the end of the original sysfs page buffer.
> 
> Collect each element into a temporary PAGE_SIZE buffer first and then
> copy only the remaining space into the caller's page buffer.

...

> +	elem_buf = kmalloc(PAGE_SIZE, GFP_KERNEL);

get_free_page() (or how it is called)?

> +	if (!elem_buf)
> +		return -ENOMEM;
> +
>  	for (i = off = 0; i < (arr->num ? *arr->num : arr->max); i++) {
> -		/* Replace \n with comma */
> -		if (i)
> -			buffer[off - 1] = ',';
>  		p.arg = arr->elem + arr->elemsize * i;
>  		check_kparam_locked(p.mod);
> -		ret = arr->ops->get(buffer + off, &p);
> +		ret = arr->ops->get(elem_buf, &p);
>  		if (ret < 0)
> -			return ret;
> +			goto out;
> +		ret = min(ret, (int)(PAGE_SIZE - 1 - off));

It's usually discouraged to use castings in min/max/clamp. Can we make ret long
or do something different here?

> +		if (!ret)
> +			break;

> +		/* Replace the previous element's trailing newline with a comma. */
> +		if (i)
> +			buffer[off - 1] = ',';

Can't we do this after with help of strreplace()?

> +		memcpy(buffer + off, elem_buf, ret);
>  		off += ret;
> +		if (off == PAGE_SIZE - 1)
> +			break;
>  	}
>  	buffer[off] = '\0';
> -	return off;
> +	ret = off;
> +out:
> +	kfree(elem_buf);
> +	return ret;

-- 
With Best Regards,
Andy Shevchenko


