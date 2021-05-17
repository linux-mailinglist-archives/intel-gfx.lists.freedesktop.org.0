Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F324382C08
	for <lists+intel-gfx@lfdr.de>; Mon, 17 May 2021 14:24:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6561E6E944;
	Mon, 17 May 2021 12:24:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE5466E944
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 May 2021 12:24:45 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 4CCB767373; Mon, 17 May 2021 14:24:42 +0200 (CEST)
Date: Mon, 17 May 2021 14:24:41 +0200
From: "hch@lst.de" <hch@lst.de>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20210517122441.GB15150@lst.de>
References: <20210513232841.147989-1-jose.souza@intel.com>
 <20210514054923.GA5323@lst.de>
 <ab936e8bb197068f658cb68a5dc1796a7ee73405.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ab936e8bb197068f658cb68a5dc1796a7ee73405.camel@intel.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix a possible use of
 uninitialized variable in remap_io_sg()
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, May 15, 2021 at 12:23:04AM +0000, Souza, Jose wrote:
> On Fri, 2021-05-14 at 07:49 +0200, Christoph Hellwig wrote:
> > On Thu, May 13, 2021 at 04:28:41PM -0700, Jos=E9 Roberto de Souza wrote:
> > > If the do while loop breaks in 'if (!sg_dma_len(sgl))' in the first
> > > iteration, err is uninitialized causing a wrong call to zap_vma_ptes(=
).
> > =

> > But scatterlist must have at least one valid segment.  So while the
> > patch looks ok, please clearly mark that this is a false positive from
> > the static checker in the commit log.
> =

> No static checker mentioned but yes it was caught by one.
> Anyways better have this change and avoid possible reports from other sta=
tic analyzers.

Please also add the information I provided above to put this into
context.

> =

> Can I add your Reviewed-by?

With that:

Reviewed-by: Christoph Hellwig <hch@lst.de>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
