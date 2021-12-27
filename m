Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A111747FC09
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Dec 2021 11:57:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2A6010E2E1;
	Mon, 27 Dec 2021 10:57:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B3EF10E2E1
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Dec 2021 10:57:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640602649; x=1672138649;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=R5c7E7LhRX8Ou22X5SYw7a4ttkiOVw/fNy/cbUPQKGM=;
 b=F1FoSxTvKnQfOUK/GdYZsE9+WbgFf8QAuTb5NQnG5AYmezq94VM4K0Up
 8gKRIIjl659pTJ9X5LUXKDQPYPkXm+s+bo32Wzo+Ekvi90oUicOTSp5Nu
 JUfzHHVAlgTIiTaGGuFokeWStyjjqQPof3xFHnzsxYP7Gq2wWId7GWQcs
 XsphbjIWrQ8auU8l8psQ4rE/y2Pr4LmKVPINgScB2pfn0bjMXuTBVIIoF
 ww41kFFGcN7Fbts+/+ZX6oxDs8uPadGT0oVA3HvySRpChEnxOIXZbBxFz
 4yK8hK4hoDiurGfSZiRjR3UIqHZbEMSUqWTYtBulAOU1j0JpB+0AmSRrX g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10209"; a="228498838"
X-IronPort-AV: E=Sophos;i="5.88,239,1635231600"; d="scan'208";a="228498838"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Dec 2021 02:57:28 -0800
X-IronPort-AV: E=Sophos;i="5.88,239,1635231600"; d="scan'208";a="523246191"
Received: from mkarsano-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.10.35])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Dec 2021 02:57:27 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <YcN6nos9UaYGRIQk@smile.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211222154033.6770-1-andriy.shevchenko@linux.intel.com>
 <164019809475.15676.2723971470983454199@emeril.freedesktop.org>
 <YcN6nos9UaYGRIQk@smile.fi.intel.com>
Date: Mon, 27 Dec 2021 12:57:24 +0200
Message-ID: <874k6ul3hn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/1=5D_drm/i915/dsi=3A_Drop_double_ch?=
 =?utf-8?q?eck_ACPI_companion_device_for_NULL?=
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

On Wed, 22 Dec 2021, Andy Shevchenko <andriy.shevchenko@linux.intel.com> wrote:
> On Wed, Dec 22, 2021 at 06:34:54PM -0000, Patchwork wrote:
>> == Series Details ==
>> 
>> Series: series starting with [v2,1/1] drm/i915/dsi: Drop double check ACPI companion device for NULL
>> URL   : https://patchwork.freedesktop.org/series/98304/
>> State : failure
>
> I couldn't see how even possibly to have any new regression with the change
> provided. Can anybody assure me that it's my patch made all those breakages?

False positive. Pushed to drm-intel-next, thanks for the patch.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
