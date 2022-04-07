Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BAA44F7915
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 10:06:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 395BF10E99C;
	Thu,  7 Apr 2022 08:06:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8488610E9A5;
 Thu,  7 Apr 2022 08:06:55 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 82B3868AFE; Thu,  7 Apr 2022 10:06:51 +0200 (CEST)
Date: Thu, 7 Apr 2022 10:06:51 +0200
From: Christoph Hellwig <hch@lst.de>
To: Zhi Wang <zhi.wang.linux@gmail.com>
Message-ID: <20220407080651.GA16455@lst.de>
References: <20220407071945.72148-1-zhi.a.wang@intel.com>
 <20220407071945.72148-2-zhi.a.wang@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220407071945.72148-2-zhi.a.wang@intel.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH v9 1/3] i915/gvt: Separate the MMIO tracking
 table from GVT-g
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
Cc: Zhi Wang <zhi.a.wang@gmail.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Jason Gunthorpe <jgg@nvidia.com>, Vivi Rodrigo <rodrigo.vivi@intel.com>,
 intel-gvt-dev@lists.freedesktop.org, Christoph Hellwig <hch@lst.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The whole series looks good and works fine on by Kaby Lake Thinkpad:

Reviewed-by: Christoph Hellwig <hch@lst.de>
Tested-by: Christoph Hellwig <hch@lst.de>
