Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9A25F654C
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Oct 2022 13:37:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F16C10E3BC;
	Thu,  6 Oct 2022 11:37:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2069.outbound.protection.outlook.com [40.107.93.69])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E041C10E2CF;
 Thu,  6 Oct 2022 11:37:11 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F1V/TSHcDbmotr/MtccnnL7OMYPZmvX2hKCHgw8LFhBDuEZsjwgnXp0XbHBq5xQWzmQos4efxyP//mOz+/gXmZkKexz1wbfibBiUYMH/1gGk2lBQ578DhIDx5gmIHTCiuEijiuZZv032q+KPEuzfv2NkPgLa93GyiR5oHlvm2gQ9fTOp+oVMk0QJmMHOWUzivM+s6x9dnDCqBcQdULS/5LvZXX7UHf/IRSTZ5Im9/lVj4FwGrXMZdzIX/Cu5JN4VaRD3sfRkFzpD3LwlKCTlrgI8kw5eut0UEVz672B5kXi94Hf9bst9HPoY/l9gboO1wlBA2jMvNuLnQMsrM4Tm6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AMHwGNg43yUOgttFSSFjEiZwo5pvZ9uqZMst1KDDEX4=;
 b=YKvOdBnP87YVbiVvBnjFmA7Nim6o2Sbx6QqaTGYRZlCzG1ookjv59/2b1mtsfGa6FR3CMXExnxfMJrCmJVwZ/Q0olUMzvj683nRmMUaZQk2sQmjljmnCCJfgo0C9LviBUyqDcVz4bSS/HAEaRmqn0aZSJGHDb4z2h/jNWsf13i9NVrG5sM4o4iB544TgiQi6T+T/2AcX3OcSMdjRsRm68hCM8F6O6RzQvR1EK4mjUxPZ7BeeOvy59U/mmZQ0ZrTr+3NQyU47QSFh/MT2t7eZj0rBRoRBv6FVKBnJ2PSVwPcgEthaBnTB/5toC2L6cyH/1ir6StFMXYfyfECBvGY/DA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AMHwGNg43yUOgttFSSFjEiZwo5pvZ9uqZMst1KDDEX4=;
 b=GLecB+jttYXaql/ellVrkR9WSHT2G1QT5JzX9/qUUSLTlc4qikF9fSimWTi8wqbpYCofzfxkrIY3Sc2+f9vpz8iu8kdaNCdxWUBylLXMLNyoBlkLpx7KyRlVfLzgAwW/Z1WGRaUjgX+fgTtNl+WIfFGiO4A8rWj0ROUhDtmGjH7xkiORoRHXnCWTpbe6XTB14QOEo7WFADIRAD60k/gpFsHV2sREpVeoeC5IPVtYwJDuwl2jGzv/d1NNjYM7HzEkw07bi7oKAdCphqmzNgorVrfco3FBgulLc3wdJxDP3e+xQYi2ivEy6BID0Hw+s1LC+w2d6FRtnf9DmeyiXVIwig==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from LV2PR12MB5869.namprd12.prod.outlook.com (2603:10b6:408:176::16)
 by PH7PR12MB7212.namprd12.prod.outlook.com (2603:10b6:510:207::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.16; Thu, 6 Oct
 2022 11:37:10 +0000
Received: from LV2PR12MB5869.namprd12.prod.outlook.com
 ([fe80::7a81:a4e4:bb9c:d1de]) by LV2PR12MB5869.namprd12.prod.outlook.com
 ([fe80::7a81:a4e4:bb9c:d1de%5]) with mapi id 15.20.5676.032; Thu, 6 Oct 2022
 11:37:09 +0000
Date: Thu, 6 Oct 2022 08:37:09 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Alex Williamson <alex.williamson@redhat.com>
Message-ID: <Yz695fy8hm0N9DvS@nvidia.com>
References: <0-v1-013609965fe8+9d-vfio_gvt_unregister_jgg@nvidia.com>
 <20221005141717.234c215e.alex.williamson@redhat.com>
 <20221005160356.52d6428c.alex.williamson@redhat.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221005160356.52d6428c.alex.williamson@redhat.com>
X-ClientProxiedBy: MN2PR05CA0019.namprd05.prod.outlook.com
 (2603:10b6:208:c0::32) To LV2PR12MB5869.namprd12.prod.outlook.com
 (2603:10b6:408:176::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV2PR12MB5869:EE_|PH7PR12MB7212:EE_
X-MS-Office365-Filtering-Correlation-Id: 9475759a-a26d-4393-3fd0-08daa78f1ace
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ltK6PjFhymsEOH6TdcjH4wS5jYfTl2guAbBMcMp5GuI3n4lmKSjj+iHiPcO10OdMuYW4uxu+Uz3ESvlo4U0VBcNLsu7LKyoiY7I0JReSB/O7ZM49ZL/D5iZ9UpX0C5q5Keo/H+OuNZh/a1mwiw/1M5ZwXPg/SvJWdPEq7sslSvxQD5JjvS+O7JgjnmDaoS+RJA+rDp6Op1JWHSHPDpM4UfnVHa6+mwe7Iqg+kzXrlw2SGVNDsDUhE+Ft55PaR/pyo4AKGSRH89j3xVvxZTOxxXRzpZJ+mm11GEWDGE/p9u5FoUI6nh7rr44IM4dGfMN9K9M3jFSQk93EzVQdhZhMgWIbkFeYl8UuW3Db1eaAHgEyRE/geJjjE01KBU6ogm7Sh5CehuNH1yTM/UL3Ki4y0NkS/yAX1Rho/8zdSGF03rkkiN9UN5WGsZD8tOqg9GWCqHi7UtqJ0RloYAmwbkyw9x7YjCd5Voh+HixCJgAwLl0d9XtV6vYD0zzptv25/yRMaZChZte8HWECw3jb/f0b1RPSzrv1vNbEtm5xvObj6ucvURXQy2ogSutbEKdX9w1wfitPtysag92EO7w8taWEoTf8RvQIrrIxxD6ERd7mCJA/fY5gcnp/Ls0NrrEwGLsDWxsln2iq4sqTZTAU+rAQ42q1o6Ey55ICRE6yAVic6DBnvD5queO8LD/mqN+wvOaxmUJ1zFwwnuZLmRL1+gadeA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV2PR12MB5869.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(396003)(39860400002)(366004)(376002)(346002)(136003)(451199015)(478600001)(6916009)(83380400001)(6486002)(54906003)(86362001)(4744005)(66556008)(7416002)(4326008)(26005)(2616005)(186003)(41300700001)(316002)(5660300002)(6512007)(6506007)(36756003)(8936002)(66476007)(66946007)(8676002)(2906002)(38100700002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Eg72SqjFQwQftt7U/AqH4R+Xz0lTgOXatde5/FzBGWC0MLfdwopuAAGeHskr?=
 =?us-ascii?Q?Xb/Vb042zorVgzUuEJ5hsuPPSb1O8lDs7ZuG7ATI13ynobio+1aJ4K4P4VE3?=
 =?us-ascii?Q?klUac6pqs7LT4DDn2tZJFsVy4ujCvcdpw5tqAicLk1l15N3Xo8hAucHuMhQh?=
 =?us-ascii?Q?8eSFwDQcxzl6EEp+CDuU7Db6oNnIHlx1tGNk9IFpzIrt+59vpP6kkUzt93a2?=
 =?us-ascii?Q?izIdBjGQhlzCn6/JVFPPcSc6IcD/PMVeacYfRrU8rIH9lr6AZH8MkRXJ+eaX?=
 =?us-ascii?Q?3GSYZqp0CRx1Un89lfMCwUsivsOCFl/QnRRiRLpdiLIkFHUQqannBc9SVhIm?=
 =?us-ascii?Q?pVnM/o7KO8Zi3jANCT5QAfnuuM8mB3Eie6rOkv/N5eK8RAV1S4BUArUjr+sM?=
 =?us-ascii?Q?oJqhKq973a7+nJive0cvxuVMr7a5HgILsEve7mgG5+56az8AQU7LLPN5eCTd?=
 =?us-ascii?Q?R08dWFta+JmBHSTsOb4M5TymiCFKHpNKGTiI+PEFOLXCy5m2CxGWouhciUeP?=
 =?us-ascii?Q?QQ+Imph6qQBbo3OQ8qord6pO7uxLvggW9SPocMGv+g42rD8C/jQ/jU8BagNj?=
 =?us-ascii?Q?97oecJtjvK+7hv395xZSpzwJH6+KIh9/z4duZ2DK1k0N2L8QBlWz5jZx/Mf4?=
 =?us-ascii?Q?FpV0ZOOG/t1Yxedoqiz79aiORwSlN2naL5nqUEPED6VfLKk28pmkpzgGlgy/?=
 =?us-ascii?Q?d7VKqmRKm14/5vp/hCPVGwBhE+Sqcs7hwp7hpGaLeNcKPWOh262wK5HIzdoH?=
 =?us-ascii?Q?KYfUvI1gzO0QwLp82u8QNQ1wqoQk5R5bCtagrshZQQc+Wsqv/s0IuJxIclPD?=
 =?us-ascii?Q?z+NXMxTBs/45lm99oKDLYFIZDoT0/IF6nwL6rXJ+gutD7gGj1KnZfGrA4RI7?=
 =?us-ascii?Q?w6yj5nvILlOLQZItVdWge1+/HsBqqoMZOjKQrfkJlLpV96AdRr+IucClWtQp?=
 =?us-ascii?Q?ZUa7IO+/RDQ7PB/hXwGsOvD9/sDROhFpOOm7ZkOEfg8AIylvFXoL12kRoVBj?=
 =?us-ascii?Q?CsvPoyj8ITjmerdLWpmoOCm/LvIlU3w8QiaMEYTzU18Tz54uEgqULBhhuqBc?=
 =?us-ascii?Q?kI7fgs2NylFtDbezbeQcjcXLJnHYJFnuIUdoZgL1e5VModCV1Wr9VCm6ISJo?=
 =?us-ascii?Q?OEWx2Xsg8sGBO0Rq7y0bUmyxQUZAJtCZBiqVMTdjCN6pc3zoYh2r4ABTrniR?=
 =?us-ascii?Q?YpJsGj8KDLTLI3lQQ2rt/HkzPc7JKyF94mlEGgA4eRCYeRAja7h/Hub763ZS?=
 =?us-ascii?Q?GPjV/9S8Jsmw8o09hxpsexkACGOU+ZOIa4ybZPGPZQvCQ34SF213wQjhfdON?=
 =?us-ascii?Q?MSVFpD/UKLugOE7SZXFOwZR7FIsVzrCu9DKpiWKjq0ceGcFVdCcgELElhHgJ?=
 =?us-ascii?Q?PeFKFopfObLn69dCCm1d1NmRsz/VhaafEbTHuxhah7eUD00nqIUYQTw4ZMlh?=
 =?us-ascii?Q?OIc4xldXGU7sgzf0uTHRfq/j3LqpW0tfS2neGDI37xGP6pkfSnmvwuuqIFEV?=
 =?us-ascii?Q?MsJxYNoGtV5Oe62BuhdwbYNLUHB++J1t+8FhkbDbvMr/q83ueyWdMHTXEbL8?=
 =?us-ascii?Q?iPD0Hsl06uT2KP+zmpI=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9475759a-a26d-4393-3fd0-08daa78f1ace
X-MS-Exchange-CrossTenant-AuthSource: LV2PR12MB5869.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Oct 2022 11:37:09.9013 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NqwiIU4gcONqko3i/kqaaVQjnGoTkqPLXFRCoq6dFvkuHEVqc7HQ9PEhO9LTmUcD
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB7212
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gvt: Add missing
 vfio_unregister_group_dev() call
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, stable@vger.kernel.org,
 intel-gvt-dev@lists.freedesktop.org, Christoph Hellwig <hch@lst.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 05, 2022 at 04:03:56PM -0600, Alex Williamson wrote:
> We can't have a .remove callback that does nothing, this breaks
> removing the device while it's in use.  Once we have the
> vfio_unregister_group_dev() fix below, we'll block until the device is
> unused, at which point vgpu->attached becomes false.  Unless I'm
> missing something, I think we should also follow-up with a patch to
> remove that bogus warn-on branch, right?  Thanks,

Yes, looks right to me.

I question all the logical arround attached, where is the locking?

Jason
