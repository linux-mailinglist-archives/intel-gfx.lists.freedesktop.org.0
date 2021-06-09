Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE2A3A0DF5
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 09:44:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86CD76E408;
	Wed,  9 Jun 2021 07:44:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9918A6E3A0;
 Wed,  9 Jun 2021 07:44:07 +0000 (UTC)
IronPort-SDR: RO7kROxoQNUfk53WoV2Mpa0+xikdbUK7Y1+0JDNg2CVOQ2zSwG6DPGsrvDv6U9s25n/huoZ47i
 pF0vixQ7Trjw==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="266177122"
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="266177122"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 00:44:06 -0700
IronPort-SDR: 22Z64FUVcr6zVdgRm6BZFbJ72kZ9j/NdifXGNgT3fFWuY2Gfbbw8nOi+xIfd/tD3nf9yCRlUcE
 tBDiEfZoDAcA==
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="419195869"
Received: from gbwalsh-mobl6.ger.corp.intel.com (HELO [10.252.10.147])
 ([10.252.10.147])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 00:44:05 -0700
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210609063436.284332-1-thomas.hellstrom@linux.intel.com>
 <20210609063436.284332-5-thomas.hellstrom@linux.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <e75712c3-af00-e0be-6ee1-3203e7242065@intel.com>
Date: Wed, 9 Jun 2021 08:44:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210609063436.284332-5-thomas.hellstrom@linux.intel.com>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH v2 4/9] drm/i915/gt: Add an insert_entry for
 gen8_ppgtt
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMDkvMDYvMjAyMSAwNzozNCwgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6Cj4gRnJvbTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gCj4gSW4gdGhlIG5leHQgcGF0
Y2gsIHdlIHdpbGwgd2FudCB0byB3cml0ZSBhIFBURSBmb3IgYW4gZXhwbGljaXQKPiBkbWEgYWRk
cmVzcywgb3V0c2lkZSBvZiB0aGUgdXN1YWwgdm1hLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTogTWF0dGhldyBB
dWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
