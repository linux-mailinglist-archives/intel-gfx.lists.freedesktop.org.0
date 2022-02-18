Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5894BBCF1
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 17:03:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3021C10EE58;
	Fri, 18 Feb 2022 16:03:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FF0110EE4F;
 Fri, 18 Feb 2022 16:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645200187; x=1676736187;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=VDw9M29/9PRA53Wq3GdODXQuAW0CFN1+eM7QW0NGPCc=;
 b=igBQXNwO49T9yEKx+TuTTmAS51b4B61BnUAwY7mnn5QWBZrG3W+OKdBS
 Fv27uMOD+yfRZhaRkgjmaqdrCwVISeAnpqfM6bV/tnZbHoJj/4Bwz8xFF
 kiS/TRP3Q3/vHTwf/XUJ0+GUGLpXH93+FnNQJXS+CqUHDgBmmY27kG+wU
 SnEMUt560Q4SXkNLNxuRgCcvYG459lRNMVfnxVSap+7lfuqECfVN/B36O
 u0RMbQf/Masd/sQ05/AqAD0TsFi7mzkNqHmG5xWcqTUGKwGGdYBAXC14t
 VoFkbKhmMGS01mwi+f8WcFglso46b1Rn3377NC7X9FNYZuZCpg+/jOPVt w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="251095537"
X-IronPort-AV: E=Sophos;i="5.88,379,1635231600"; d="scan'208";a="251095537"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 08:03:06 -0800
X-IronPort-AV: E=Sophos;i="5.88,379,1635231600"; d="scan'208";a="546328965"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.252.21.225])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 08:03:03 -0800
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20220218151935.31688-1-janusz.krzysztofik@linux.intel.com>
References: <20220218151935.31688-1-janusz.krzysztofik@linux.intel.com>
From: Chris Wilson <chris.p.wilson@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org
Date: Fri, 18 Feb 2022 16:03:01 +0000
Message-ID: <164520018148.26182.14140261608114027724@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] lib/igt_device: Add support
 for accessing unbound VF PCI devices
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
Cc: intel-gfx@lists.freedesktop.org, Michał Winiarski <michal.winiarski@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Janusz Krzysztofik (2022-02-18 15:19:35)
> @@ -206,15 +229,19 @@ static struct pci_device *__igt_device_get_pci_devi=
ce(int fd)
>                 igt_warn("Couldn't find PCI device %04x:%02x:%02x:%02x\n",
>                          pci_addr.domain, pci_addr.bus,
>                          pci_addr.device, pci_addr.function);
> -               return NULL;
> +               goto cleanup;
>         }
> =20
>         if (pci_device_probe(pci_dev)) {
>                 igt_warn("Couldn't probe PCI device\n");
> -               return NULL;
> +               goto cleanup;
>         }
> =20
>         return pci_dev;
> +
> +cleanup:
> +       pci_system_cleanup();

This is a global cleanup of libpciaccess iirc, such that if anyone else
was using the library they would be affected.

> +       return NULL;
>  }
