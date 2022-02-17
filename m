Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3081E4BAB9A
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 22:15:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59E8B10E81D;
	Thu, 17 Feb 2022 21:15:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8322310E817;
 Thu, 17 Feb 2022 21:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645132522; x=1676668522;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=d1jvkuad3zHQu9CC9LSmjJ1cb08WPYELx3HeWedPnHQ=;
 b=kGsAz4iwbEQwrIKx1YZJAZb85VR0KvsraoPFCyVUI1uI+/0JFBBstKOm
 b09WxZIqf6VU2MwYKKBIUdQuZaG92JG6NsyD2K7+aKFwoxI/OE4iuU/mg
 OyOsvFmzojtjd2XhOAed2bMQPkhOzsjLa56u4p4um+nNQGG21PsJ2Qk67
 7wlYzZyAQauzLsas+LYb6nXqdv8imQEGhv+K/raMkpIvADvu/gfP6+8RI
 SPBp24nQgbyR7OQB7ZBwVhJPnXDGZUJm0CkfFZd+n/Yt232hPEP6+E9sQ
 6u+r1SAVSoPYBxIi8fMPQxo3BYum1x93+IeDtSyRzKdeRCp7ip1pXqmnM g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="238381432"
X-IronPort-AV: E=Sophos;i="5.88,377,1635231600"; d="scan'208";a="238381432"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 13:15:21 -0800
X-IronPort-AV: E=Sophos;i="5.88,377,1635231600"; d="scan'208";a="572001347"
Received: from dburke-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.88.148])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 13:15:20 -0800
Date: Thu, 17 Feb 2022 13:15:20 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ramalingam C <ramalingam.c@intel.com>
Message-ID: <20220217211520.x2hv66uhjweyd2ph@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220215055154.15363-2-ramalingam.c@intel.com>
 <20220217184221.15568-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220217184221.15568-1-ramalingam.c@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915/dg2: Enable 5th port
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 18, 2022 at 12:12:21AM +0530, Ramalingam C wrote:
>From: Matt Roper <matthew.d.roper@intel.com>
>
>DG2 supports a 5th display output which the hardware refers to as "TC1,"
>even though it isn't a Type-C output.  This behaves similarly to the TC1
>on past platforms with just a couple minor differences:
>
> * DG2's TC1 bit in SDEISR is at bit 25 rather than 24 as it is on
>   ICP/TGP/ADP.
> * DG2 doesn't need the hpd inversion setting that we had to use on DG1
>
>v2:
>  intel_ddi_init(dev_priv, PORT_TC1); [Matt]
>
>Cc: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: José Roberto de Souza <jose.souza@intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>Signed-off-by: Ramalingam C <ramalingam.c@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
