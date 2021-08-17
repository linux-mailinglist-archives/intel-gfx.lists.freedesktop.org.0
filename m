Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72CAC3EE804
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Aug 2021 10:08:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 133926E027;
	Tue, 17 Aug 2021 08:08:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CA146E027
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Aug 2021 08:08:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10078"; a="216050787"
X-IronPort-AV: E=Sophos;i="5.84,328,1620716400"; d="scan'208";a="216050787"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2021 01:08:51 -0700
X-IronPort-AV: E=Sophos;i="5.84,328,1620716400"; d="scan'208";a="520348684"
Received: from bbartede-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.41.183])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2021 01:08:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: =?utf-8?Q?Jos=C3=A9?= Roberto de Souza <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210722054338.12891-5-jose.souza@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210722054338.12891-1-jose.souza@intel.com>
 <20210722054338.12891-5-jose.souza@intel.com>
Date: Tue, 17 Aug 2021 11:08:47 +0300
Message-ID: <878s10ijcg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 05/10] drm/i915/bios: Enable parse of two
 integrated panels eDP data
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

On Wed, 21 Jul 2021, Jos=C3=A9 Roberto de Souza <jose.souza@intel.com> wrot=
e:
> +struct vbt_edp_info *
> +intel_bios_edp_info(struct intel_encoder *encoder)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +
> +	return &i915->vbt.ddi_port_info[encoder->port].edp;
> +}

Btw, I also have WIP to completely nuke ddi_port_info. It's a silly
cache that should go away.

BR,
Jani.

--=20
Jani Nikula, Intel Open Source Graphics Center
