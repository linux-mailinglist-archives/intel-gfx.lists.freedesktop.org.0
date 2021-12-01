Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDAA3464452
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 01:59:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28CFD6E332;
	Wed,  1 Dec 2021 00:58:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79F016E1D2;
 Wed,  1 Dec 2021 00:58:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="217046434"
X-IronPort-AV: E=Sophos;i="5.87,277,1631602800"; d="scan'208";a="217046434"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 16:58:52 -0800
X-IronPort-AV: E=Sophos;i="5.87,277,1631602800"; d="scan'208";a="609338406"
Received: from ylai12-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.81.247])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 16:58:51 -0800
Date: Tue, 30 Nov 2021 16:58:51 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Michael Cheng <michael.cheng@intel.com>
Message-ID: <20211201005851.xxqjqewdv6e5lamq@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20211118205432.579910-1-michael.cheng@intel.com>
 <20211118205432.579910-2-michael.cheng@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20211118205432.579910-2-michael.cheng@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5] drm/i915: Re-use i915 macros for
 checking PTEs
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
Cc: jani.nikula@intel.com, siva.mullati@intel.com,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 wayne.boyer@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 18, 2021 at 12:54:32PM -0800, Michael Cheng wrote:
>Certain gen8 ppgtt/gtt functions are using _PAGE_RW and _PAGE_PRESENT to check
>bits 0 and 1 for PTEs. These macros are defined per architectures, and some
>architectures do not have these defined (like arm64). This patch replaces these
>two macros with their i915 equivalent implementation.
>
>Signed-off-by: Michael Cheng <michael.cheng@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

thanks
Lucas De Marchi
