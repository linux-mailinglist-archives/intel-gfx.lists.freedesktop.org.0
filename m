Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0068371A9A
	for <lists+intel-gfx@lfdr.de>; Mon,  3 May 2021 18:40:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 977FF6E99E;
	Mon,  3 May 2021 16:40:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD36C6E99A
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 May 2021 16:40:09 +0000 (UTC)
IronPort-SDR: DREEdppe8Q5azPbduZyMFdIlvkNqbuFhcIjrV+p+HZ2rdRsX/zdJG6CFH05RvAZxPJwfApEEoe
 Fl9tGl1HDISA==
X-IronPort-AV: E=McAfee;i="6200,9189,9973"; a="218576912"
X-IronPort-AV: E=Sophos;i="5.82,270,1613462400"; d="scan'208";a="218576912"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2021 09:40:09 -0700
IronPort-SDR: xBsDkAyaoWbRm842wB27FPNqfPS4uUWYgxd73dIG1CrG2r74wT7YyOrqOR5cv9s09jfItlugZa
 rSYOOD67BwaQ==
X-IronPort-AV: E=Sophos;i="5.82,270,1613462400"; d="scan'208";a="432824697"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2021 09:40:05 -0700
Date: Mon, 3 May 2021 19:40:01 +0300
From: Imre Deak <imre.deak@intel.com>
To: stable@vger.kernel.org
Message-ID: <20210503164001.GE4190280@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-gfx] drm/i915: v5.11 stable backport request
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Mario =?iso-8859-1?Q?H=FCttel?= <mario.huettel@gmx.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Stable team, please backport the upstream commits

7962893ecb85 ("drm/i915: Disable runtime power management during shutdown")

to the v5.11 stable kernel, they fix a system shutdown failure.

References: https://lore.kernel.org/intel-gfx/042237f49ed1fd719126a3407d7c9=
09e49addbea.camel@gmx.net
Reported-and-tested-by: Mario H=FCttel <mario.huettel@gmx.net>

Thanks,
Imre
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
