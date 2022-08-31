Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA5F5A813D
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Aug 2022 17:29:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B633510E438;
	Wed, 31 Aug 2022 15:28:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C905C10E432
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Aug 2022 15:28:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661959732; x=1693495732;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=ripIv0vYIQpZTuIvtCouc2c9KkTzDDwUZRO3wBIW/iw=;
 b=V7JLW0KFTZ6JC3aFXCOQc6p0pt0716bb8ILAfkCLY9e9g6aQ1SAtjeG5
 NhJo+0MFbnhCi1C1V/vvNA2iLmES63Ko3LsYIWw8y6kTaBlXV396W9UxY
 xb3mCCyGe02Lqjvo/6KlqorfhN8zItzGLJ7xV4BxYzYcF/Rymr0BgHYu0
 4AVvVx/QrBbt9nFWR4h70GaniC3uIMqD9UEP5x4ZTCsTBRBWRVtppNqZA
 NcgRmgXN2k7SFUoHBQMkG4Sh3LI6Zq/P+JpstuUBQJ54KEWM7asGZh6cG
 bYMD0CWmxK9Pnj/DU8eFQ5zllxEF9vWmyL9gRZPxlRbRP/szsoOanGlCS g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="296257130"
X-IronPort-AV: E=Sophos;i="5.93,278,1654585200"; d="scan'208";a="296257130"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 08:28:52 -0700
X-IronPort-AV: E=Sophos;i="5.93,278,1654585200"; d="scan'208";a="641911365"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.2.39])
 ([10.213.2.39])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 08:28:51 -0700
Message-ID: <7fe653cf-8c7e-546b-6ff7-6b43453ece6f@intel.com>
Date: Wed, 31 Aug 2022 17:28:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.13.0
Content-Language: en-US
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220830085158.577157-1-mitulkumar.ajitkumar.golani@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20220830085158.577157-1-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix warning callstack for
 imbalance wakeref
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

On 30.08.2022 10:51, Mitul Golani wrote:
> While executing i915_selftest, wakeref imbalance warning is seen
> with i915_selftest failure.
> 
> Currently when Driver is suspended, while doing unregister
> it is taking wakeref without resuming the device.
> This patch is resuming the device, if driver is already suspended
> and doing unregister process.
> 
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej
