Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D14C64DD0
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 16:24:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E20E710E3C8;
	Mon, 17 Nov 2025 15:24:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="H7t+ZmVB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CH5PR02CU005.outbound.protection.outlook.com
 (mail-northcentralusazon11012055.outbound.protection.outlook.com
 [40.107.200.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8214610E38A;
 Mon, 17 Nov 2025 15:24:45 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GfHfYgG09M8KU67ceMWHat+cAKJjs/WskPTv2GgktUfOAPceECxz6l8XetrQizDhs/AAKH42UsTgV4ygSUPm2OKZfWC5KOI3SRDXT/38Oh8S6irf3sVWp1qB2FBIa2az5bbymq3ydkCYJrisQoaxZNXaRoYjdypm5BLRIdugsXzx780Y+T75jdolNbYipMxaXkp2MroIAtw4y7Oa5+tbEORWQTIOmUNRnFo6qdlrW/9Ii/C8dnTEeO4NuyM2mx+K0zZOy5rSvke6ugKe+WcRFce+/xnq0kohYFzfNqQydlxsc2hKdtZ5VkdkT7EJMOEhsH0FNoNOFBeew2BHL8RZoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fQt5oHdgRHQwhltjF4eFW6dU+zhka2BmgMRn9dkZZh8=;
 b=yB07BMo0cWIHrwgb8eTDgAjaZ0tKrx8Tg6NdPA3mwQm/7jrl7mLIguzAhxKz7WCRy5zWt9+BxxOe7M74s5HLEBT75Xw6iZF5ifnbKHQIinCGpiO9yFZjpMO2zkQFpqFoN6oNl8u2AQQkXDV0U5i4tVtxvljt9QLjSOI56/Guikm53SzuAprUTsfGmRx3PKWM2hnLfZQYhtEvSS9caH/XKRPPg4zDnmgivXsMqoP14kyefWX0PQXsgy7Xbn7UyRNjP74zTRJsFv6CILmmRwmv3ojdomYuCSQVfPuTC3SJqRE9DXPbkyAvPEj3Wm8KJVpEyT1uh1qa799UfJli5IX1nQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fQt5oHdgRHQwhltjF4eFW6dU+zhka2BmgMRn9dkZZh8=;
 b=H7t+ZmVBvoXxon1Q/UZcTIEDzDooz8QNH1cUw4xeBwbKyeboExOoxeanjZzOywgDot+P8EBYFIYBo7wU36KAPXBCdiLysTtL1jz76H0BnsDwq2bLuYYVcBB3a/ftd/dDcU1uOSi6ya4VVD4gOzBLJ8C1H80tc+RwkxNnuXuihv7eltFc/srLoGHhMq0mAyv3Q9a8aJj8fFaCSQHHScg91WVEqIPC6vwETl5vLMHS4wexH5fwTFkttyBf+zz7pFubadkKmYRMPBVRVGwFNvqWZqgUjGEkOFx5eMrmgqhQmOjm2cM9H/5SNZ148shrdE97Ytj2KgGbrvuNTJhGJnpItw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from MN2PR12MB3613.namprd12.prod.outlook.com (2603:10b6:208:c1::17)
 by IA0PR12MB8256.namprd12.prod.outlook.com (2603:10b6:208:407::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.17; Mon, 17 Nov
 2025 15:24:42 +0000
Received: from MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b]) by MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b%4]) with mapi id 15.20.9320.021; Mon, 17 Nov 2025
 15:24:42 +0000
Date: Mon, 17 Nov 2025 11:24:41 -0400
From: Jason Gunthorpe <jgg@nvidia.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
Cc: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 Lu Baolu <baolu.lu@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Auld, Matthew" <matthew.auld@intel.com>,
 "iommu@lists.linux.dev" <iommu@lists.linux.dev>
Subject: Re: REGRESSION on linux-next (next-20251106)
Message-ID: <20251117152441.GC10864@nvidia.com>
References: <4f15cf3b-6fad-4cd8-87e5-6d86c0082673@intel.com>
 <aRUK8vDZ3dE1zNxL@nvidia.com>
 <BN9PR11MB52766744A2895F782016AF7A8CCDA@BN9PR11MB5276.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <BN9PR11MB52766744A2895F782016AF7A8CCDA@BN9PR11MB5276.namprd11.prod.outlook.com>
X-ClientProxiedBy: MN2PR17CA0030.namprd17.prod.outlook.com
 (2603:10b6:208:15e::43) To MN2PR12MB3613.namprd12.prod.outlook.com
 (2603:10b6:208:c1::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR12MB3613:EE_|IA0PR12MB8256:EE_
X-MS-Office365-Filtering-Correlation-Id: 204e1d1e-69d5-4524-7072-08de25ed6e61
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?x16GarnlAeNB0in9wOTXZzA53FIUvk+UGCFmm4iUYwA1hnbFgYScrE+FYPq9?=
 =?us-ascii?Q?dpVzcok3BXTge5lUQOezbNf5YHK1XqIhhcQDLjultikFuqw3jYtG+OsJ1ivo?=
 =?us-ascii?Q?nTU/IComYzFwl3NEcp8dW4Ki0To5pxsiGuRnJBBxnBnh26VIlyLuRCEzE98r?=
 =?us-ascii?Q?WeploGkyMUvpDn9ZxKlZRXzLMX/d8+GynbO5WN8Co7oDWWZqKhmz7LrVFh7J?=
 =?us-ascii?Q?E2Dv66mzdh8y52nZixrd6AmdVncdounXmkNDbTr/j3W+YJ6pRMvhDWcpgLx8?=
 =?us-ascii?Q?A5+e4uziWdL7svNSH2GBLFHv7f6vBKZadeHDxae5BGS9VBpScYsCQI07FxdF?=
 =?us-ascii?Q?RO9my7mXoByEkTVJHdPrrLH1Hn+GJ90Zg5usFSs1dfDTfOS+lMb7VmlV+3ed?=
 =?us-ascii?Q?153pX8e5Fs+0PJRw3ioMpzaw1sADr1L2+yO9LKZSYNSad+zI18J7ceGeiMus?=
 =?us-ascii?Q?EjVpMIzFaBc0SO9bwRSdU7/Iq76GTSXSF3ycZJDCYuFTw74Y9J3ANz71nEtw?=
 =?us-ascii?Q?QklHl49hc/cENOPRKuU8NMNeMsRQbrfiY0Q6Z/Bcg3fpgyMi13hYInOZXQ70?=
 =?us-ascii?Q?7kSUdncFt8sJEANx8EGIuwW/qevARrHyFNYFkiEb1bpjohtIkWyAghDqZfsA?=
 =?us-ascii?Q?v9tHe50046XtYUd5zCLl2HjfVE/ePwdun1xbThwQYCrkKX+1wkxCq/g6YcwB?=
 =?us-ascii?Q?5z4lPuIWH/OA2lKjkwOI2qTLijqvyz9Qh6LAA5ciDuB0LfFIpwnj5FIGTVhD?=
 =?us-ascii?Q?bq/vIoPO7IQiWSxi7q3XPl37zdgfOTptwb18zumrqPtJK0Fq5cqVR9gRQX4f?=
 =?us-ascii?Q?+ViwqE1h022/IlfKjhleCvI/M/yF/pZbqV+b/IShtg46KHiIkQQLUnGty31R?=
 =?us-ascii?Q?wX2zmtjYFzzmSXC8C8Spo6s+10WaQvrONugicBJE9ssCVwL2WlgeuMdStTni?=
 =?us-ascii?Q?T7X2kpdF0MV3a9y68TDn+bjbMptbAMJiKr7nFGN6EQc//exPVjj7ULFHbo1S?=
 =?us-ascii?Q?4LkWb9skXMjPBWUYxOgexyyjF40+4BYBb8GltjQTBR53hjUs8W4PYVZ4nxV0?=
 =?us-ascii?Q?hu5VKJmMJY3aUoeAyAZfUwyQzBfBdTUKob/CRlCpY7ydy7xIlyuK/rEeR33A?=
 =?us-ascii?Q?v1zd/GFRWYY3tkDRYtm7CinlRGDiEkRAL/Lak4QR86wYVKN+MZK8nE9dHRPM?=
 =?us-ascii?Q?ksc32ChIH35dRHZ73iX/5Yq1Naf/+MCBRf0bwGca0MT6CkfB0htl4Nz6Uv+i?=
 =?us-ascii?Q?btuT+EojnjEKpcIpdQZST/wyAigICfaCXAxVT5dBNF1J4OKzmP8pquBblNSA?=
 =?us-ascii?Q?CaojBaGZjh4DkC3HS2Z3/zOHdGRjrUJ+XHpW+WDq4IH9d1TgpnQcHWgbEyqV?=
 =?us-ascii?Q?xZSjr0iRPXDQ+m8z9FaYT6HoahGpNqV1jdyvJAP2HuN1dIxXT4gxR3MR56rn?=
 =?us-ascii?Q?IZzbybGPh8j8BiYrj/wrQtKBQ6K18pPp?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3613.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JHCJTU+WujHos/HMLKCV57JoYND24wzBsZ9FXYyx3N+XkptZ0P8EnI79sXfr?=
 =?us-ascii?Q?ueXoT6YFTsNdF3AM0IEcJ4btq9UQTH41Ew4uNYWoc9/mgZeZMUXx+I6EfUml?=
 =?us-ascii?Q?G57NJ4pGspmDlZL/jJNLLxomn7H/OHUdQTjUltvQTbPoRHpZ3NCukPHUDa0B?=
 =?us-ascii?Q?fVRDd5MgnAzVJ35Eb+TROv7BQbTl53NigdnO3eO9hPn8SadHp695EwguAma2?=
 =?us-ascii?Q?RV28Q9wPM8JM7DVMlKkqlKccG7DrjDKCUFfQSv4jpwTeXJBJNXMSvUU6Xtb8?=
 =?us-ascii?Q?jGgybkrnd4AhdpvFAgIMwYKxD3FV3kaXWE8ejn0jMaftdKSpPH65chA/NfRV?=
 =?us-ascii?Q?i0NCyJJNE3SgdyEu3Q/0Scs5eGiif38Wu3fPfqcf7jXONRE/DtnI9tCft4JN?=
 =?us-ascii?Q?Jo2FO/dgC68kr7kldRWeabsL28b15hF6FiVEo75oLZ0NS/NgZKvVRCZkCTns?=
 =?us-ascii?Q?5hP5Wc+oJRiQu2mxefXjX8rLhDtlabC7NGtjLciyte9gm79w54DdTK5RhqsO?=
 =?us-ascii?Q?fiA5jKtgddoHfVPPFITSsQvIdqA9pD4WBSygSHKGY/xqHooM2/Bt+PU2SydT?=
 =?us-ascii?Q?fgQpPjFSytuzjEuhcYBgrTSjhSEKhAMs7xNlK1weXej43cAek3rSEpQzdwuP?=
 =?us-ascii?Q?x5LbptBjXX3ohQzZFH7zKgjSWXmImVccOiaDQtSIFlzO8IdeGTfzIMFkgHXs?=
 =?us-ascii?Q?Em9KAPA7Kq94Y4uSdsXgUwLHu61zBefGaP3F5bwx1SVeQLkUf6Ju7kpZfWpR?=
 =?us-ascii?Q?fgOrwFJhRO4fp3jUJeOeJyNfim3m+lrkfUUSoMJwMwWBV37srzEIpQhFHCgC?=
 =?us-ascii?Q?QQyORDKz5J0hmhYDBqgja0jika2dxLN0HcX7fuB9GSHbkOeQSTw4fxKldHn2?=
 =?us-ascii?Q?EQrAOdXyMtjh4oYcvpQPL397dABTe0AiZtHYfJzKSVOFABztINvyXow0chRQ?=
 =?us-ascii?Q?S7DvzFXOILGR0ZNxSa3dI3WuUYtxE/mbkRNosYjsuoxU0hk9JJR0Fpt4qH5B?=
 =?us-ascii?Q?nbvvb6p6I2OGBSa7fZAivQ/dOaoL1t1cNmliIFZUqCCzCmHMsrYVE3T0nOhN?=
 =?us-ascii?Q?djxcQ6rpLExINNKWQaczVt5UCXsBLkL45CwiGcKAL5FOZyABXdn1PfhpFwnV?=
 =?us-ascii?Q?0n6B16PJU35gTw92HzREHXPw6p8hSPtsm0QUJmHzlvXog8zEQENH5ypscM0K?=
 =?us-ascii?Q?wwhIDkM0iPYAV3mIM3AyKsigXLjig1JB6qdLGMQIjEK1J7RE/PAzl5oRS3Zg?=
 =?us-ascii?Q?igBJEqsDoNUk0hO/gKhFEZ4wrMJ8LYpwVO696xZ0ZVqxMBvbwzkokLI/Pc1w?=
 =?us-ascii?Q?8R87V4NQ3nZUfsuzuk2xMI2NnQMW2Xhfi8EiHeUH3ZzOOVPg9tTept7h5yWY?=
 =?us-ascii?Q?6Z2bTa7LnrBocBd70/hD2+PS5Q4sw+ohL8jG8h1qp1RJucoL1FPL7iouLta1?=
 =?us-ascii?Q?kf9r8p0sjAZjyJfdMD/oFqdmyVWdwq7+v+ePw7CDT/g7BgyMgUGLP1OpTOVc?=
 =?us-ascii?Q?5qqYWixMYKcpZEdzrSLxeScQtVRLW4zxTFc8sMFmPRgeLCJ7efA2yBQ9yplX?=
 =?us-ascii?Q?BGS2NV4IrsEa3oFd5Pc=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 204e1d1e-69d5-4524-7072-08de25ed6e61
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3613.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2025 15:24:42.3860 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LmFg5SNduNJNYr/ZL2gKNf00VBbQbYD09aCFNc7Q5JlcDzkl5Z0d1dfkypJbozvP
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB8256
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

On Thu, Nov 13, 2025 at 02:00:18AM +0000, Tian, Kevin wrote:

> Likely the mapping for that buffer is incorrect, either due to stale iotlb
> entry or map/unmap corner cases. I'm inclined to the former.

Okay, we could check iotlb by hacking it to force flush the whole
thing after every map. If that fixes it then iotlb is missing
flushing..

Jason
