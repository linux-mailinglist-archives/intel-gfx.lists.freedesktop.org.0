Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83EB8270319
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Sep 2020 19:19:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 273A16ED44;
	Fri, 18 Sep 2020 17:19:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E88A36EB14
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 08:03:38 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id d4so1015319wmd.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 01:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=TUShtxADeMIRUv08jDyFnIdO2h4AVdi1g89uLOtrWXw=;
 b=Xm9muXpLMfdw+3JTaQ5+6nxJDSneO0K8th2wgQ0VLh2VI2BmK+XWoQ9cDtIn8+KaRJ
 B45Xbntr5JjNU8mF7nIZd8VP+CTHviEtF1Um5VazOhr6GEQCgh9bbRNIM6C+XWioNjmk
 ImuOo8Gi8eD0FtSQ7hHZ1yPAo82BLFHJwGGg0UxKCYs0oMSSpMWIe45dJUN+DzUELaKQ
 JzvvcS8KVPQMZJTfgm/lLBewbBl9UGKGHM3XV6hYGQwunOqgCSfJKO8sQaLl1M6X9BRD
 K+XM2hJttDJQqNZl5Xftk9yd2fnhmTZR2ol6vfSH0itoQkT2+o/FcX7saxpuLl0f47l5
 EzpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TUShtxADeMIRUv08jDyFnIdO2h4AVdi1g89uLOtrWXw=;
 b=b/DXoHXYsi3A4hbNn9mXaKBsX9n0RozEKLZ0uF4xsFQssCF3ki78j4rFAzHcq+2dBl
 zRkWsGNUpJ2TQL54uMxnUHdEwqdjbpiDbgWojJy0F8gYO92CPw4fMVsRcso1nWAk4btO
 2/MRHW+isOgx3XR4SJrkZJR2zBBULiSqtpOejjJQ89DqWzW8HBoiV9OCMkqeq50Z4G/C
 9RA1hoXHt5IeZWz1Hpfhk4ux7Z9k8qSPcFpwI6USEe0Id8ZF7MtIPoJI6WktdHGJLFpv
 XFBgD152nOKJQsthN7YPznFDbTkuC1OnedwGfDNVqDw5ptvb612XPVYUqZ9To+k7lMV/
 r5cg==
X-Gm-Message-State: AOAM5339BITucb9cU8drvcvNtnkAk82hJ1XbKmEQtucCq2STNqxYStoE
 2puLfRrkIwiNZMyL1y3EUqd91w==
X-Google-Smtp-Source: ABdhPJzTwzfeJOnCQh65prZummqH9JR09Yxja+zvv2OTSAZpPcom4k7xuvXSyH3Yv50qn/8+2aIWyQ==
X-Received: by 2002:a1c:e256:: with SMTP id z83mr8793930wmg.33.1600329817598; 
 Thu, 17 Sep 2020 01:03:37 -0700 (PDT)
Received: from netronome.com ([2001:982:756:703:d63d:7eff:fe99:ac9d])
 by smtp.gmail.com with ESMTPSA id a13sm9836030wme.26.2020.09.17.01.03.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Sep 2020 01:03:36 -0700 (PDT)
Date: Thu, 17 Sep 2020 10:03:35 +0200
From: Simon Horman <simon.horman@netronome.com>
To: Joe Perches <joe@perches.com>
Message-ID: <20200917080334.GB5769@netronome.com>
References: <e6387578c75736d61b2fe70d9783d91329a97eb4.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e6387578c75736d61b2fe70d9783d91329a97eb4.camel@perches.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Approved-At: Fri, 18 Sep 2020 17:19:24 +0000
Subject: Re: [Intel-gfx] [oss-drivers] [trivial PATCH] treewide: Convert
 switch/case fallthrough; to break; 
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
Cc: linux-wireless@vger.kernel.org, linux-fbdev@vger.kernel.org,
 oss-drivers@netronome.com, nouveau@lists.freedesktop.org,
 alsa-devel <alsa-devel@alsa-project.org>, dri-devel@lists.freedesktop.org,
 linux-mips@vger.kernel.org, linux-ide@vger.kernel.org, dm-devel@redhat.com,
 linux-mtd@lists.infradead.org, linux-i2c@vger.kernel.org,
 sparclinux@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-rtc@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, dccp@vger.kernel.org, linux-rdma@vger.kernel.org,
 linux-atm-general@lists.sourceforge.net, linux-afs@lists.infradead.org,
 coreteam@netfilter.org, intel-wired-lan@lists.osuosl.org,
 linux-serial@vger.kernel.org, linux-input@vger.kernel.org,
 linux-mmc@vger.kernel.org, Kees Cook <kees.cook@canonical.com>,
 linux-media@vger.kernel.org, linux-pm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-sctp@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-nvme@lists.infradead.org,
 storagedev@microchip.com, ceph-devel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 Jiri Kosina <trivial@kernel.org>, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, iommu@lists.linux-foundation.org,
 netfilter-devel@vger.kernel.org, linux-crypto@vger.kernel.org,
 bpf@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 09, 2020 at 01:06:39PM -0700, Joe Perches wrote:
> fallthrough to a separate case/default label break; isn't very readable.
> 
> Convert pseudo-keyword fallthrough; statements to a simple break; when
> the next label is case or default and the only statement in the next
> label block is break;
> 
> Found using:
> 
> $ grep-2.5.4 -rP --include=*.[ch] -n "fallthrough;(\s*(case\s+\w+|default)\s*:\s*){1,7}break;" *
> 
> Miscellanea:
> 
> o Move or coalesce a couple label blocks above a default: block.
> 
> Signed-off-by: Joe Perches <joe@perches.com>

...

> diff --git a/drivers/net/ethernet/netronome/nfp/nfpcore/nfp6000_pcie.c b/drivers/net/ethernet/netronome/nfp/nfpcore/nfp6000_pcie.c
> index 252fe06f58aa..1d5b87079104 100644
> --- a/drivers/net/ethernet/netronome/nfp/nfpcore/nfp6000_pcie.c
> +++ b/drivers/net/ethernet/netronome/nfp/nfpcore/nfp6000_pcie.c
> @@ -345,7 +345,7 @@ static int matching_bar(struct nfp_bar *bar, u32 tgt, u32 act, u32 tok,
>  		baract = NFP_CPP_ACTION_RW;
>  		if (act == 0)
>  			act = NFP_CPP_ACTION_RW;
> -		fallthrough;
> +		break;
>  	case NFP_PCIE_BAR_PCIE2CPP_MapType_FIXED:
>  		break;
>  	default:

This is a cascading fall-through handling all map types.
I don't think this change improves readability.

...
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
