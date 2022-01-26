Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34CAA49D4FE
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 23:08:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FA9410E72E;
	Wed, 26 Jan 2022 22:08:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1116F10E72E
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 22:08:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643234928; x=1674770928;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=xxYp45uNGXR4Mp3EopH1MNssk7BJ4i9/8D4CXda6rOE=;
 b=fmJnpO0q4ehklCFJdEloB/K4YVqlOf+pObdKPju1gob+v2BTCAvbi/hB
 GpJiFjhhOgEMrfbMjFdt6DsfXf0xcalaG/TcQhodeA93GfXB2vhE7Myz/
 Cux444nxjejOLjJw+qPflqCtOBFASLMA/LP8EVaSmhKX2p7LI8bcDLvXr
 Q9eI7AFApF90IS+J/WqOytj+0qfWuqqiVbiq4PMcCmEylOJdMUSAS3gY8
 5B12ZM/llOySy3+Aror7thDkTPcBqLwxBYR3QVL16i6ERKAHg/cEihPqi
 A1n/pnJfPdtldtRz4vyTf8N5DNMcwnIJ+j8dxy45KXyxS5oJDl6Fhg8du w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="309975588"
X-IronPort-AV: E=Sophos;i="5.88,319,1635231600"; d="scan'208";a="309975588"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 14:08:47 -0800
X-IronPort-AV: E=Sophos;i="5.88,319,1635231600"; d="scan'208";a="628447650"
Received: from richardt-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.143.219])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 14:08:46 -0800
Date: Wed, 26 Jan 2022 14:08:46 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20220126220846.wwfhnjotm7tymca3@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220125020826.2693097-1-matthew.d.roper@intel.com>
 <20220125020826.2693097-2-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220125020826.2693097-2-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 1/6] drm/i915/perf: Move OA regs to their
 own header
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 24, 2022 at 06:08:21PM -0800, Matt Roper wrote:
>The OA unit registers are only used by the perf code; move them to their
>own header file.
>
>Cc: Jani Nikula <jani.nikula@intel.com>
>Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

I checked the output from git show --color-moved to help and indeed this
is just moving the registers. Also, looking at the register names, they
all seem to be OA/perf related.


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
