Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 221D1175C79
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 14:58:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 772556E419;
	Mon,  2 Mar 2020 13:58:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 933516E419
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 13:58:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 05:58:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,507,1574150400"; d="scan'208";a="351545154"
Received: from camposfi-mobl2.ger.corp.intel.com (HELO [10.252.38.16])
 ([10.252.38.16])
 by fmsmga001.fm.intel.com with ESMTP; 02 Mar 2020 05:58:49 -0800
To: intel-gfx@lists.freedesktop.org
References: <20200302103159.1780248-1-lionel.g.landwerlin@intel.com>
 <20200302103159.1780248-2-lionel.g.landwerlin@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <0dc58942-3a22-1882-d627-d1487f6c4f73@intel.com>
Date: Mon, 2 Mar 2020 15:58:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200302103159.1780248-2-lionel.g.landwerlin@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/perf: introduce global sseu
 pinning
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 02/03/2020 12:31, Lionel Landwerlin wrote:
> On Gen11 powergating half the execution units is a functional
> requirement when using the VME samplers. Not fullfilling this
> requirement can lead to hangs.
>
> This unfortunately plays fairly poorly with the NOA requirements. NOA
> requires a stable power configuration to maintain its configuration.
>
> As a result using OA (and NOA feeding into it) so far has required us
> to use a power configuration that can work for all contexts. The only
> power configuration fullfilling this is powergating half the execution
> units.
>
> This makes performance analysis for 3D workloads somewhat pointless.
>
> Failing to find a solution that would work for everybody, this change
> introduces a new i915-perf stream open parameter that punts the
> decision off to userspace. If this parameter is omitted, the existing
> Gen11 behavior remains (half EU array powergating).
>
> This change takes the initiative to move all perf related sseu
> configuration into i915_perf.c
>
> v2: Make parameter priviliged if different from default
>

Just uploaded the Mesa changes for this :

https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/4021

The IGT tests are here :

https://patchwork.freedesktop.org/series/74111/


Cheers,


-Lionel


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
