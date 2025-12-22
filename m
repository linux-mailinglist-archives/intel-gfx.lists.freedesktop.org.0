Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39433CD627C
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 14:29:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C838110E635;
	Mon, 22 Dec 2025 13:29:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nr4SsJK+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A83D10E635;
 Mon, 22 Dec 2025 13:29:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766410168; x=1797946168;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=H7+fSoyhmjgpyYk9mZ4dPRewrR0SMm3Zkl/8OWOj/X8=;
 b=Nr4SsJK+MZH5agplVHX6tyZX4yHTFJ39ZTY/RVX3L5M+ZhJudN2MM6l5
 tKigO5pXgXy5gMVYc8qL7Cm2lsI+tb7XXN6e+WLjkq7OeihNHquzXTch9
 hYRhedM59v+gqDZMnM62gUmwi7riEJHx8NlSbiudOkj3pXIzmXOzHmOZE
 33rvZbTUbTw7lLNIJu48Xpo3eAIryb7ofopmLI6J6cRESOuvyL5PDFTsC
 FyOSMYb4/VIPrnhuf5tEK7MZtLF701X4sKBGnGqyTLCbrFcHVJChsEMes
 92nIzEp4ul3jGP++6LCD4R4xkiL5Olf7I1SzvrtODVAVB18uCgjZqSvXQ g==;
X-CSE-ConnectionGUID: N0odMQ9yRoKpPWh01x3Z9w==
X-CSE-MsgGUID: xYpa0VzoSXGM7aLAXRj+zg==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="78982255"
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="78982255"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 05:29:28 -0800
X-CSE-ConnectionGUID: h3bXicdXSLybD/u/yK7OrA==
X-CSE-MsgGUID: SfO0kzauQ96h/xJ5Vtdmcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="200416671"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 05:29:27 -0800
Date: Mon, 22 Dec 2025 14:29:25 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 2/4] drm/xe/compat: remove unused forcewake get/put
 macros
In-Reply-To: <5081b00a6fa20bdbcc1c973c6920cd590e1dc98f.1766406794.git.jani.nikula@intel.com>
Message-ID: <13cf5433-174a-5201-c85a-b81cc5ec5327@intel.com>
References: <cover.1766406794.git.jani.nikula@intel.com>
 <5081b00a6fa20bdbcc1c973c6920cd590e1dc98f.1766406794.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-956213330-1766410168=:1478141"
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-956213330-1766410168=:1478141
Content-Type: text/plain; format=flowed; charset=ISO-8859-2
Content-Transfer-Encoding: 8BIT

On Mon, 22 Dec 2025, Jani Nikula wrote:
> Since commit 35ec71285c93 ("drm/i915/pc8: Add parent interface for PC8
> forcewake tricks"), the compat intel_uncore_forcewake_{get,put} and
> FORCEWAKE_ALL macros have become unused. Remove them.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³
--8323329-956213330-1766410168=:1478141--
