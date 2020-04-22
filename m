Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B14E81B5FED
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 17:53:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDCE76E90F;
	Thu, 23 Apr 2020 15:53:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 900 seconds by postgrey-1.36 at gabe;
 Wed, 22 Apr 2020 19:24:11 UTC
Received: from hqnvemgate24.nvidia.com (hqnvemgate24.nvidia.com
 [216.228.121.143])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 802E06E07D
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Apr 2020 19:24:11 +0000 (UTC)
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate24.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5ea095e20001>; Wed, 22 Apr 2020 12:07:14 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Wed, 22 Apr 2020 12:09:10 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Wed, 22 Apr 2020 12:09:10 -0700
Received: from DRHQMAIL107.nvidia.com (10.27.9.16) by HQMAIL105.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 22 Apr
 2020 19:09:10 +0000
Received: from rcampbell-dev.nvidia.com (172.20.13.39) by
 DRHQMAIL107.nvidia.com (10.27.9.16) with Microsoft SMTP Server (TLS) id
 15.0.1473.3; Wed, 22 Apr 2020 19:09:09 +0000
To: Jason Gunthorpe <jgg@ziepe.ca>, <linux-mm@kvack.org>
References: <0-v1-4eb72686de3c+5062-hmm_no_flags_jgg@mellanox.com>
X-Nvconfidentiality: public
From: Ralph Campbell <rcampbell@nvidia.com>
Message-ID: <17ce2fdc-4f9f-7772-c10c-6f339a4183e8@nvidia.com>
Date: Wed, 22 Apr 2020 12:09:09 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <0-v1-4eb72686de3c+5062-hmm_no_flags_jgg@mellanox.com>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 DRHQMAIL107.nvidia.com (10.27.9.16)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1587582434; bh=Ibr26mSSlFN5k8tPbVlsbPzYkk2ONJQVn8RAtNIyK9E=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=SYRCFRSghsuA1oPUGpaSrThd5bs4yjq3+gWlxe7OKwNdoqB2UOa004VsS8/Lr697y
 CWlieyjD7XPQ253DIjhDdL01VtVsGtzGEvoQqDO6lPiZ5CYv0eWmptUvjs6CnBqvRa
 4hoTO4QeEmS2vafuYzVQSMQMrQxnk3yoAyIRHCI99P9Mgj2uvXuKNUDzqFBGyVCZml
 JGQm9m8ACFaaebFyqUIUXiOiwj4oGw/DQEJJc0XtF3If903YGzmV0z3IE+sqd6zM9+
 KnxSL5/RF+iYX9gU+gjf3WtClWhx9GpAdGYAifxagOljqMjx/EX9krpg30i0tS21KU
 UXh/u9XgjPkgw==
X-Mailman-Approved-At: Thu, 23 Apr 2020 15:53:41 +0000
Subject: Re: [Intel-gfx] [PATCH hmm 0/5] Adjust hmm_range_fault() API
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
Cc: "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 amd-gfx@lists.freedesktop.org, John Hubbard <jhubbard@nvidia.com>, "Kuehling,
 Felix" <Felix.Kuehling@amd.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Christoph Hellwig <hch@lst.de>,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Ben Skeggs <bskeggs@redhat.com>, nouveau@lists.freedesktop.org,
 Alex Deucher <alexander.deucher@amd.com>, intel-gfx@lists.freedesktop.org,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 4/21/20 5:21 PM, Jason Gunthorpe wrote:
> From: Jason Gunthorpe <jgg@mellanox.com>
> 
> The API is a bit complicated for the uses we actually have, and
> disucssions for simplifying have come up a number of times.
> 
> This small series removes the customizable pfn format and simplifies the
> return code of hmm_range_fault()
> 
> All the drivers are adjusted to process in the simplified format.
> I would appreciated tested-by's for the two drivers, thanks!

For nouveau you can add:
Tested-by: Ralph Campbell <rcampbell@nvidia.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
