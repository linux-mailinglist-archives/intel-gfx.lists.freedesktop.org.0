Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C480820A255
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 17:47:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21C4C6EBE0;
	Thu, 25 Jun 2020 15:47:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2076.outbound.protection.outlook.com [40.107.223.76])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88CAC6EBE0
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 15:47:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nq8gmaW3f61s450h01hc1QXbm5RW2Wl4MIRhlCE1y3sWEGYrubE/otj+vrtrg/+Ca39YEg5Wq7sRK3FSZwjVip1O/4N/8yoBWXr1OeUs+dBtMWGHeULMHUdVWJCApI0itGnMTBj5pExIz/7kWqhOek5qxY9W6C5SPtLad8SIjLqcylXPAH2LVjLkIp03uaQp7u73SxM1YugIRK6jDnNBsqZWdXVMrff5O45dZ7Hw96MBGJR0KrMUVBbc5BjX3sosZ2/E0b1ct1Qn/EFiybSPZnYLF4DeHz+cNJBxDxABe/3iYa4/ZNDvO0HBg0rF8L4ZcvoqRig8ccJujeh0K8Y3vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4cXtr1yPDrGD5tjyktu4/zZmI8HNifEr9eXgFF8eOzA=;
 b=geFkHVYqW0DL6IBObnaRorao/+s59X7+VUHPtofPPfCAV+V7hmLHxwubfvV8ry43MJkxSw8dtuyeJbGscbti+ZdkiZzDPGAwQOHMuvkQgWcOu3be6z9Xuo7LSCIjp1GlTKdwVkrpM3eKy+9lYIFj9VvH+RlYMGnabiYlugtou9wi2ETEvLZBqr+fnM0ZgjOH5rvkXgTroNOoa/uldLGJEm4vVUw5Rf9LqM2T44jNboS/ExGDTr+GI8oGeL/Dq5I+Vdya0bbNsbZmNe5DvBlMHfBB+7qcF/b5cTfO424V54V0AjEg2JfGZSZeVb9kLt8dXXnJTdpP1yVHNicht+ebcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector2-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4cXtr1yPDrGD5tjyktu4/zZmI8HNifEr9eXgFF8eOzA=;
 b=tpYWs87kaABgUsjwf6YRipXvIBdpn2gl8bWC1ZMlE2t4wlMbiwn722SxD60uEHrv1bjiYmFnKGNwHFpkwVWTd4vUYCbNNlkqPsCrZ8JhyZGOAWIbR2Vpy/PyGdjKElgNELyci/HM3he2NLP/1DQSly81Nru84PHAuL5hUMEbZoY=
Authentication-Results: ffwll.ch; dkim=none (message not signed)
 header.d=none;ffwll.ch; dmarc=none action=none header.from=amd.com;
Received: from DM6PR12MB4401.namprd12.prod.outlook.com (2603:10b6:5:2a9::15)
 by DM6PR12MB3913.namprd12.prod.outlook.com (2603:10b6:5:1cc::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.21; Thu, 25 Jun
 2020 15:47:15 +0000
Received: from DM6PR12MB4401.namprd12.prod.outlook.com
 ([fe80::a045:f8c0:8edb:1ef1]) by DM6PR12MB4401.namprd12.prod.outlook.com
 ([fe80::a045:f8c0:8edb:1ef1%9]) with mapi id 15.20.3131.020; Thu, 25 Jun 2020
 15:47:15 +0000
To: Chris Wilson <chris@chris-wilson.co.uk>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Dave Airlie <airlied@gmail.com>
References: <20200622095921.15530-1-chris@chris-wilson.co.uk>
 <CAPM=9tx69Xv3xbAb1U+SGOuKk7wirZy6FbRejsajCt9Lvan9VA@mail.gmail.com>
 <159294714433.24819.3044662904558073290@build.alporthouse.com>
 <CAPM=9tzY0An5THnH=+KEv35LfX0DGt9q6u=t83id6OPgFsN-LQ@mail.gmail.com>
 <159302990055.4527.16849537545776334660@build.alporthouse.com>
 <de87a30b-3ac2-1bee-4ee0-5a05baef6146@gmail.com>
 <159308931300.4527.14536354033703689604@build.alporthouse.com>
 <6d99c4d9-7294-9ce1-471a-f81de7dc2c4f@amd.com>
 <159309140216.31486.2359580281725596670@build.alporthouse.com>
 <011fe07b-1e2c-7cc2-ade8-2c8b4df80b90@gmail.com>
 <159309782319.31486.530565133539052103@build.alporthouse.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <746b10ad-7521-78dd-9a2b-2f44b6594842@amd.com>
Date: Thu, 25 Jun 2020 17:47:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
In-Reply-To: <159309782319.31486.530565133539052103@build.alporthouse.com>
Content-Language: en-US
X-ClientProxiedBy: AM4P190CA0006.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:200:56::16) To DM6PR12MB4401.namprd12.prod.outlook.com
 (2603:10b6:5:2a9::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
 (2a02:908:1252:fb60:be8a:bd56:1f94:86e7) by
 AM4P190CA0006.EURP190.PROD.OUTLOOK.COM (2603:10a6:200:56::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3131.20 via Frontend Transport; Thu, 25 Jun 2020 15:47:13 +0000
X-Originating-IP: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 8d17f3e9-9b6d-498d-09ff-08d8191f0871
X-MS-TrafficTypeDiagnostic: DM6PR12MB3913:
X-Microsoft-Antispam-PRVS: <DM6PR12MB3913A4FDC88CCAA3BF90406983920@DM6PR12MB3913.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0445A82F82
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LR14a+Xms/2njZaBBzoD3E0ZjODQI0ClRINC2Rey8ZeDhzGm3JKMG0EATmXVqWD8YHi1iWVEs043p70XI9nTXqiIXe/gkQ+TmbqLWtqwo/CoNrIx+3MJD99Os92dbWU4hDUXn5oolasa6nPM/7EUZdCm6gYZCEj/vjBmb47WYSoMUvtt2mzAh+w7IavJn0JNOzq9per6yAo1/XeV//IyAraYjiaswfMuSJrKc8z1ihBXOU83gWCPrdB1UMO43D8I+dgRzy4Em0iuYXFD1F2pUy5AeMY43uxaDt/RbyjJdpBHlavSB2+Edlsh3NWSkNQSoj7ZsLzVbwF6M+1VK1YlfFZj8sT1XbDud0Y+UjbWt5vcp3+SwuoO8b7byCvxigCC
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR12MB4401.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(346002)(366004)(376002)(39860400002)(396003)(66476007)(66946007)(83380400001)(2906002)(52116002)(186003)(16526019)(8676002)(2616005)(8936002)(316002)(31686004)(6486002)(86362001)(5660300002)(31696002)(66556008)(36756003)(54906003)(110136005)(6666004)(4326008)(478600001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: V0e9E4amZmewYPBiYjw1Fc8fMmxJRp4j+XrBPszGbBCCXzUh2nins6cvixhLg7RcmqKBKQNyxW9jaqNxjnV6vnIgZT9ZKyUlsdAT5X9r5oubwNEauDPIHZJqIQFoY3bmDQPyqnwVBwmpP2fU44S7Hs1Ysl/K8+Em2ll9E+jYLfdr7IGj6boUwXRGovh/E92PVFVDYETgAyXl6upaA1+dDQtv/VyiocBB9x8ZiGTo+rXBjSw927VU3LJii1SWrkDEZp5gLBI0AL35m36YZBc6ZrwnXma+MDoxW7/foS9NArsrKg88BD+5MvSlb+B/BQplwlfkO7aXuDQFBZAWmC03dO2gd/7383t8V6lPhKR0z6pPelTWvyw65gWYJAxDIcborJtZcunOuCd0dtD2k74BihMyn97KmNIRb6bIXRPvMPUaSZKL971GHEaryDQZ8ZdmYygi5lHmCG3h8NeUPx29W4hXvEq/5vrgqJBufDR+X9M6PH72yul9gcJ5V0rzPKc+kVgut+mL8x1Pz5gagsHUoShmMT1kYl/FXIGTPPlo3HcnoBYRbMdtPo+bhY8zaxWC
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d17f3e9-9b6d-498d-09ff-08d8191f0871
X-MS-Exchange-CrossTenant-AuthSource: DM6PR12MB4401.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2020 15:47:15.0735 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xP8K3nUhThHL5nxotMosC+QkK7le+zqpZ/sZzxnH2Fnjf0gHMDOtTVUQRHP81738
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB3913
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/gem: Acquire all vma/objects
 under reservation_ww_class
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Am 25.06.20 um 17:10 schrieb Chris Wilson:
> We have the DAG of fences, we can use that information to avoid adding
> an implicit coupling between execution contexts.

No, we can't. And it sounds like you still have not understood the 
underlying problem.

See this has nothing to do with the fences itself or their DAG.

When you depend on userspace to do another submission so your fence can 
start processing you end up depending on whatever userspace does.

This in turn means when userspace calls a system call (or does page 
fault) it is possible that this ends up in the reclaim code path.


And while we want to avoid it both Daniel and I already discussed this 
multiple times and we agree it is still a must have to be able to do 
fence waits in the reclaim code path.

So what happens is that you have a dependency between fence submission 
-> userspace -> reclaim path -> fence submission. And that is a circle 
dependency, no matter what your DAG looks like.


In other words this whole approach does not work, is a clear NAK and I 
can only advise Dave to *not* merge it.

Regards,
Christian.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
