Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B803542C544
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 17:51:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D344B6EA7B;
	Wed, 13 Oct 2021 15:51:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ACBE6EA79
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 15:51:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="227356598"
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="227356598"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 08:51:55 -0700
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="563148607"
Received: from sanmathi-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.118.139])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 08:51:55 -0700
Date: Wed, 13 Oct 2021 08:51:56 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 siva.mullati@intel.com
Message-ID: <20211013155156.n7lejrozevcmdrjn@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <cover.1634119597.git.jani.nikula@intel.com>
 <755ebbbaf01fc6d306b763b6ef60f45e671ba290.1634119597.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <755ebbbaf01fc6d306b763b6ef60f45e671ba290.1634119597.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: split out vlv sideband to a
 separate file
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

On Wed, Oct 13, 2021 at 01:11:59PM +0300, Jani Nikula wrote:
>The VLV/CHV sideband code is pretty distinct from the rest of the
>sideband code. Split it out to new vlv_sideband.[ch].
>
>Pure code movement with relevant #include changes, and a tiny checkpatch
>fix on top.
>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>

thanks
Lucas De Marchi
