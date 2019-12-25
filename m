Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EFCC12A90B
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Dec 2019 20:31:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5B818999E;
	Wed, 25 Dec 2019 19:31:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2B568999E
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Dec 2019 19:31:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Dec 2019 11:31:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,356,1571727600"; d="scan'208";a="392172171"
Received: from kandasna-mobl.ger.corp.intel.com (HELO [10.252.36.133])
 ([10.252.36.133])
 by orsmga005.jf.intel.com with ESMTP; 25 Dec 2019 11:31:30 -0800
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
References: <20191224012026.3157766-1-matthew.d.roper@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <ee1164c0-8402-c00d-ecf6-0deb2be7bfb9@intel.com>
Date: Wed, 25 Dec 2019 21:31:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20191224012026.3157766-1-matthew.d.roper@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 0/3] Workaround updates
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 24/12/2019 03:20, Matt Roper wrote:
> A quick drive-by update for some workarounds I noticed that were
> added/extended to additional platforms.
>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Matt Atwood <matthew.s.atwood@intel.com>
> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>
> Matt Roper (3):
>    drm/i915: Extend WaDisableDARBFClkGating to icl,ehl,tgl
>    drm/i915: Add Wa_1408615072 and Wa_1407596294 to icl,ehl
>    drm/i915/tgl: Extend Wa_1408615072 to tgl
>
>   drivers/gpu/drm/i915/display/intel_display.c |  7 +++++--
>   drivers/gpu/drm/i915/i915_reg.h              |  7 ++++++-
>   drivers/gpu/drm/i915/intel_pm.c              | 12 ++++++++++++
>   3 files changed, 23 insertions(+), 3 deletions(-)
>
Acked-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>


What do you think about Wa_1407352427 for ICL?

Sounds like it could fix some 3D hangs too.


-Lionel

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
