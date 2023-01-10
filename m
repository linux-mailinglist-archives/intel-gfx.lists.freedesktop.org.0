Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F566644FF
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jan 2023 16:35:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C02E10E5EE;
	Tue, 10 Jan 2023 15:35:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 490 seconds by postgrey-1.36 at gabe;
 Tue, 10 Jan 2023 15:35:36 UTC
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F07D710E5EE
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jan 2023 15:35:36 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id EB9D268AFE; Tue, 10 Jan 2023 16:27:22 +0100 (CET)
Date: Tue, 10 Jan 2023 16:27:22 +0100
From: Christoph Hellwig <hch@lst.de>
To: Anthony Krowiak <akrowiak@linux.ibm.com>
Message-ID: <20230110152722.GB9485@lst.de>
References: <20230110091009.474427-1-hch@lst.de>
 <20230110091009.474427-2-hch@lst.de>
 <b317380e-26bf-b478-4aea-0355e0de4017@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b317380e-26bf-b478-4aea-0355e0de4017@linux.ibm.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH 1/4] vfio-mdev: allow building the samples
 into the kernel
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
Cc: Jason Herne <jjherne@linux.ibm.com>, linux-s390@vger.kernel.org,
 kvm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Kirti Wankhede <kwankhede@nvidia.com>, Halil Pasic <pasic@linux.ibm.com>,
 Christoph Hellwig <hch@lst.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 10, 2023 at 09:54:51AM -0500, Anthony Krowiak wrote:
>> +	tristate "Build VFIO mtty example mediated device sample code"
>> +	depends on VFIO_MDEV
>
>
> Admittedly, I'm not very fluent with Kconfig, but in patch 2 you stated, 
> "VFIO_MDEV is just a library with helpers for the drivers. Stop making it a 
> user choice and just select it by the drivers that use the helpers". Why 
> are you not selecting it here?

Because this changes one thing at a time.  Patch 2 then switches this
depends to a select.
