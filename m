Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F25AA959678
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 10:29:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F05810E5AE;
	Wed, 21 Aug 2024 08:29:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kmWYmK58";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73E1F10E5AA;
 Wed, 21 Aug 2024 08:29:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724228956; x=1755764956;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=KqPt1HmumK5GEjxugxR7enfnSzo4svWqHqnYfLNT55U=;
 b=kmWYmK58skW9zI0OkV4GuyA91DPjnQqsIEgrA0tXbZf7eJKJ+khQ9q2E
 np/KutlAYsk4tSV4s+57dlR4c7+PsnUPpCJQmWphGCYzcdSOsN7u9e2ox
 /9SS+6BHnDl/PRxBvGkHSQpmu8AXIQNdUhb5EJ3ALIbdmgsBwGBX9CgAx
 az35N0xJ73zarmjdeaNfSVbXZpiTi70tBCliOWHtb6yqmT9QjPh0Zn1Av
 NHcWMHo4RlL2toPtRFDHnDif3i+HoL5PPYpp/3MiJQEFT16G3gr/ovRog
 8Q5hkvLKrIJKAShkl0n1wIaVRQS6BTU6EbNkZzXA/yAEJWB/7Xt66VA/D A==;
X-CSE-ConnectionGUID: XF6BlNfZRum8NbvtoKS6bQ==
X-CSE-MsgGUID: ILt2T/NnQEum5JBQlFrMkw==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="22381333"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="22381333"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 01:29:16 -0700
X-CSE-ConnectionGUID: SrRbFoZfR8+DQaArSeIHzg==
X-CSE-MsgGUID: UMQTgqApQluHSoY3kjZZPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="61782314"
Received: from sbutnari-mobl1.ti.intel.com (HELO localhost) ([10.245.246.20])
 by orviesa008-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Aug 2024 01:29:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: Re: [PATCH 2/2] drm/xe/display: drop unused rawclk_freq and
 RUNTIME_INFO()
In-Reply-To: <8a84e375-a015-4da3-aa4c-7aff4c7b6f1d@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1724144570.git.jani.nikula@intel.com>
 <9f09274bddc14f555c0102f37af6df23b4433102.1724144570.git.jani.nikula@intel.com>
 <8a84e375-a015-4da3-aa4c-7aff4c7b6f1d@linux.intel.com>
Date: Wed, 21 Aug 2024 11:29:09 +0300
Message-ID: <878qwq5ley.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 20 Aug 2024, Maarten Lankhorst <maarten.lankhorst@linux.intel.com> wrote:
> Excellent, for both patches:
>
> Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Thanks, both pushed to drm-intel-next.

BR,
Jani.


-- 
Jani Nikula, Intel
