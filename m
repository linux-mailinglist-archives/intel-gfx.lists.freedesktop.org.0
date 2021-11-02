Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00CFC4428B6
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Nov 2021 08:39:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38C046E918;
	Tue,  2 Nov 2021 07:39:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D0016E918
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Nov 2021 07:39:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="228655009"
X-IronPort-AV: E=Sophos;i="5.87,202,1631602800"; d="scan'208";a="228655009"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 00:30:17 -0700
X-IronPort-AV: E=Sophos;i="5.87,202,1631602800"; d="scan'208";a="638102746"
Received: from psverdru-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.251.133.36])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 00:30:14 -0700
Date: Tue, 2 Nov 2021 00:30:12 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20211102073012.g26kt35onmbdrdsa@ldmartin-desk2>
References: <20211020002353.193893-1-jose.souza@intel.com>
 <20211020002353.193893-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211020002353.193893-2-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Track media IP stepping
 separated from GT
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 19, 2021 at 05:23:52PM -0700, Jose Souza wrote:
>Graphics and media IPs can have different stepping so a new field is
>needed in intel_step_info.
>
>The next patch will take care of rename gt_step to graphics_step.
>
>Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>Cc: Matt Atwood <matthew.s.atwood@intel.com>
>Signed-off-by: José Roberto de Souza <jose.souza@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
