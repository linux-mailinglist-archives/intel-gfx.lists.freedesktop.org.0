Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A50E34404C
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 12:58:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF9D289C93;
	Mon, 22 Mar 2021 11:58:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEA4989C93
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 11:58:04 +0000 (UTC)
IronPort-SDR: oueyzKGRViGl1DSG5UPA3P6oS/kV/FnlAEQ2NC4rd4o+EB0GB9dZF+ThuUS/SI3HySefvIbbj9
 h6Cisw/+lwKA==
X-IronPort-AV: E=McAfee;i="6000,8403,9930"; a="190282907"
X-IronPort-AV: E=Sophos;i="5.81,268,1610438400"; d="scan'208";a="190282907"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 04:58:03 -0700
IronPort-SDR: V1atJKmQQLMLsv4ehN1gxrC6uAVScB0vCnrpL2MS/nKKqfbytAzsmpfh9gg8HzfhJjKTh+LtSe
 F0OznopT74jg==
X-IronPort-AV: E=Sophos;i="5.81,268,1610438400"; d="scan'208";a="390455018"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 04:58:02 -0700
Date: Mon, 22 Mar 2021 13:53:47 +0200 (EET)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
In-Reply-To: <20210212150838.2568483-1-kai.vehmanen@linux.intel.com>
Message-ID: <alpine.DEB.2.22.394.2103221352330.864696@eliteleevi.tm.intel.com>
References: <20210212150838.2568483-1-kai.vehmanen@linux.intel.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/audio: set HDA link parameters in
 driver
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Fri, 12 Feb 2021, Kai Vehmanen wrote:

> Update logic to program AUD_FREQ_CNTRL register based on new guidance.
> Earlier this register was configured by BIOS and driver discovered the
> value at init. This is no longer recommended and instead driver should
> set the values based on the hardware revision.

any chance to get this merged? This has a reviewed-by already and all
tests pass:

https://patchwork.freedesktop.org/series/87040/

Br, Kai
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
