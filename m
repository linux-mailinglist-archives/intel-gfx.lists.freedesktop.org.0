Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B50A74EB57
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jul 2023 12:00:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FE1410E356;
	Tue, 11 Jul 2023 10:00:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3ABE10E356
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jul 2023 10:00:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689069616; x=1720605616;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=wNQnuwRBSIKJXtAvdn6Rsb6dZtC/mUDRlxlOYans+2w=;
 b=k1S1DwU85AaEtk89iT8DaSPnLi2TV3mu9BiW+BrubIb6SvIc5YXQNumX
 Bf2jcJGbNKZV4GSvSuyUtaOkOQuuJg9qZmmaI04jCbdW4t7phpMbTFQW5
 f+d9gGlZiOlIAEyMkVGZHklcWz0AQMnoXzAjkRv4E7pXyw27Rl1H1c7Q7
 UZgUrbDQTWDzmuPq8jsNLfbV8/B/cnswgo//Z/OvFTSSZuVhS0Bu8tKT8
 dwMDZME0moB44+YKuf2pidpoIJwnDhYqB7v1Y8YfcRAlij+0e9LZbBouN
 Iyc7vFCRj5kSf7kqvKN57m9tf8C3Wr50gjHI/vge3arkvjAf8i7dnqm1X A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="344176684"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="344176684"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 03:00:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="698373606"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="698373606"
Received: from sneaga-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.52.179])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 03:00:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Simon Ser <contact@emersion.fr>, intel-gfx@lists.freedesktop.org
In-Reply-To: <ZR-8c31L0kVNylnQHTP_MlcPiINr0Zd22HZA8DlKV8BuhUqanJ5YiWsUqavQr3AXN2mD20QWOQfrQc_tE4Dju8B-KDGEVh5Dc-9aLqpJbv4=@emersion.fr>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230623094229.120264-1-contact@emersion.fr>
 <ZR-8c31L0kVNylnQHTP_MlcPiINr0Zd22HZA8DlKV8BuhUqanJ5YiWsUqavQr3AXN2mD20QWOQfrQc_tE4Dju8B-KDGEVh5Dc-9aLqpJbv4=@emersion.fr>
Date: Tue, 11 Jul 2023 13:00:10 +0300
Message-ID: <874jmaix91.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2] i915/display/hotplug: use
 drm_kms_helper_connector_hotplug_event()
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 10 Jul 2023, Simon Ser <contact@emersion.fr> wrote:
> Any news about this patch?

Pushed to drm-intel-next, thanks for the patch & reminder.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
