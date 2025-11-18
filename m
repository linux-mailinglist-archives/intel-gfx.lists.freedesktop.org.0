Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE860C66D5D
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Nov 2025 02:29:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B0F610E40C;
	Tue, 18 Nov 2025 01:29:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="iU5GgPk3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CY3PR05CU001.outbound.protection.outlook.com
 (mail-westcentralusazon11013042.outbound.protection.outlook.com
 [40.93.201.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F179710E139;
 Tue, 18 Nov 2025 01:29:55 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GAlWzQGmLdVUfTkl4wAnkH/oekSuP9IXOheC8WZEdTGixs0K/AWRA4XHOE94UBrIwD6tOLtepNIimo7BfXDITuG1zWeX1L72cd/ks7NgyLNZKXO3PccgGtTK9condB+NA1a//k1Xd/ckGUGJZoq0fAQHZeGK5a+H0jTpcQYGhdOJ59PgG+GGejfUc6Li0OvBJy2dcwkzP98/TOnwsP71d9OnZeoRzYpc9pKFtYokPff/wby9NJrpAH2KoNXcfkZyGS9HfZpKkNd0si7iNZUuxfbxSvSnW7EW/yPsXYxNjQl5BVFo5Wmx0dtQtgGFpPhfuaEG/LmdGc0JzeRJfGpJkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NBpWkLyTTpSW7DnIBVummZKsF0tDPSP4Cr3483VLvt8=;
 b=AzAhxO9JEE5oyB3Dxg1LIG7tm736rBtps6KU7SbZ1zayNRDqg6RM1NEUWDnjVQ4bJLGX5BHv5HiYBOietaR8iXJCVD27rB9WymEvrZLp+CM1C5mFBwXzggJz8ubESdfuLWdN+30TkB5SstCq9Pwqz3HOzJuUrYBmWz7aAmoY+jtj3JnVrvKDS/A2hzhWUIS1dKy8QTXyaK3KgXhMN9hFrG3g1hF4OODYZBby07AnmkEwzodaGLwdO3Z7TbM2xOFx5F9Mn4XRZMGHz4yfy0yIm3tWC6JZOQcQbAoynDK6qX6/8plOjC5HsKwygLRwiw7CaYcD4cf0SMiLQc2pJRSYYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NBpWkLyTTpSW7DnIBVummZKsF0tDPSP4Cr3483VLvt8=;
 b=iU5GgPk3pYA4+fj1dtyv4wH5JkjP+/uOh3BEhGkHwLp8W8Vzaf46Yme7VB41YaSFQnfdP31ZoVma6MCkuThRfc1TPJDw3JQXyM2ty/TQznyFmStYTn7RJs8KuVE6H5ry777CPoFjeF3EUk6OvuEq9jXBKkkY/AV2kcY4UMMqJqEYszwrTm2ZDNtIK5fk8RGd8ckVRJ4OJuKTlAsD4h7lG+VfAGvOF8HrOM5pTM3H361Qh7Pd/H0DsDT4031W6Wvw7Ta/vVNEsXhwp5P2jenVv5FVL+Q4ESeYC1EtU1NrHKIPnM3PK+8x5LFjx+uFUb7r2Vm+qmfbRcBlq98U0+L1nw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from MN2PR12MB3613.namprd12.prod.outlook.com (2603:10b6:208:c1::17)
 by IA1PR12MB7687.namprd12.prod.outlook.com (2603:10b6:208:421::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.19; Tue, 18 Nov
 2025 01:29:50 +0000
Received: from MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b]) by MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b%4]) with mapi id 15.20.9320.021; Tue, 18 Nov 2025
 01:29:48 +0000
Date: Mon, 17 Nov 2025 21:29:44 -0400
From: Jason Gunthorpe <jgg@nvidia.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>, matthew.auld@intel.com,
 baolu.lu@linux.intel.com, iommu@lists.linux.dev
Subject: Re: REGRESSION on linux-next (next-20251106)
Message-ID: <20251118012944.GA60885@nvidia.com>
References: <4f15cf3b-6fad-4cd8-87e5-6d86c0082673@intel.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4f15cf3b-6fad-4cd8-87e5-6d86c0082673@intel.com>
X-ClientProxiedBy: MN2PR15CA0062.namprd15.prod.outlook.com
 (2603:10b6:208:237::31) To MN2PR12MB3613.namprd12.prod.outlook.com
 (2603:10b6:208:c1::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR12MB3613:EE_|IA1PR12MB7687:EE_
X-MS-Office365-Filtering-Correlation-Id: 02978cb5-aa71-499a-1306-08de2641f4ae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RHFNZ1BPTm9BQUpkVmdkL0IxUzU4TTNONUlvM1d3MzRvcnNGQVdZVXZJVHNs?=
 =?utf-8?B?Z3A1YWdRZEdhU2NKVkpUSURiREMvTTQzd0ZpV3NlRXBySmU3cFNxL3ZuZmpj?=
 =?utf-8?B?Q0MyK08ybXFhYjFsRkNwNmR1Q0swUjhCTzI2M2JRMThhcFlMRVFoK244SG8r?=
 =?utf-8?B?VFBURStVanpqVHRvT3lzckh0TWorN0pyUkptWlkvQmlRcm1OeUhzczgzTWpp?=
 =?utf-8?B?ZkJSd0cxMTdYajNJYzhEOUs1ZkdtOEEvUVFqSlgzSHJha0c3aCttOWFGUlFs?=
 =?utf-8?B?bGZ0VG9zYWphbzZ1eFRmcjUrRDJFQUdTVXcvMFdXYi9qQUdTRmpCUjZwbE5W?=
 =?utf-8?B?alNZUVh4TTVkeGdKajh6dWFQUE90VEYyaTlyQ0pIRG13UVgvcTJVdHdjYW0y?=
 =?utf-8?B?cHQwUlBVRE9oVXMwb1ZaMUNNTHp0bXFzT1FSNjdSMDBRWldkcmlzWGZycFJZ?=
 =?utf-8?B?UjRJcTdpNTRISlFqcFJicmZmRkk2MXJaR01PckhXYzdzWVNqQk5lditGWG0v?=
 =?utf-8?B?eEI4L0YzOVVvYlN1Tkw1b2ZlVUhMQ01iWHA3Mlc5SVVxRzhqS2E1aVVUQ3p1?=
 =?utf-8?B?eW9GSUhDajhXaENOazFFanh0bzdNRGY1c1dKdURETjNhOUpDaXBMaXZpdE9n?=
 =?utf-8?B?MzhCTVN6S0trT0JkQS85eHpnNmtSejZYOHNEZnozUjZQOUEyOUN2ZFI3cmls?=
 =?utf-8?B?ZVZIMTJDb3pvcmdicDc5N3V0WWU1b1BBOE90TEdpZmZ6QWw4SEdDL2pscUhr?=
 =?utf-8?B?dFNVL01YejkrSGRVaE5ONld1S0dMVEJHcm94d0I5aWJjSnJrS09rZjNqL0o0?=
 =?utf-8?B?WlZJczcyd0dkWnM4OEpvL2daOWRaOVdtTGJFQ2hOSGZTVUwyamxzOUl5bENV?=
 =?utf-8?B?ak9vSCtyUlNkREFOeFBsd3ltaEozV3prR1BBanhNSDJYb0JFYkpENzBhVnM4?=
 =?utf-8?B?K05hTkFUcEtFV2J0M1Q1dWJubXV0UDFpR1lqWmQrYk1BTEw0Vk9WdldTaGY4?=
 =?utf-8?B?TXpXV2ROV0Y3TWdmbWhpcFd3MGxESGNGeFNwUytCRmwwM3hDYnhreUpYckJO?=
 =?utf-8?B?WTZRMjV4MytpT3Y1SkkwOWttL3hhc1ZsemJqaWk0TmxiTCtFelJYcmpCdDZD?=
 =?utf-8?B?M2ptempSd2phSU42QjFtYkpWZ1gzNC9ONzZ5OW1FQ25LbTRxWFJERlNQS3la?=
 =?utf-8?B?RVA0MGdxZldWejRLUGpBRld6Mjk2Y1FRNFExREJXby9WNkpWQktNcUUvNkdq?=
 =?utf-8?B?RkR2a2J5K2t1QjlvNXkxclpOeXg0L2FKR3hLeUR2ZjArVmJTY09WSkVpc1cy?=
 =?utf-8?B?czIwYnlLbjlERHBrVUttbUU3THI3U2FNaGllL29FT3JBY2dJeVNhTWkzczVu?=
 =?utf-8?B?L3g0SWgxVE1pS0NZczF1UC9VMDg5V052aDM3dUszRGttQ2Z5Nnc3TFUwYVc4?=
 =?utf-8?B?eXV3Z1BoblREdDk4Q2JzRiszMitzTXRvdU5LV1daR2dRaGJFaWJRS0NCaHdV?=
 =?utf-8?B?a3Bja3drYzhoZ05PQWttTkcrZExCaGw4dURkY0hFb25xUEZ5SVJzTUZaNkxH?=
 =?utf-8?B?L3ZVRGFhMTRTbWVWNzJ3eEFldlNtSzNZcVRER1RGVDc5OEFTbXBrVC8vSnBN?=
 =?utf-8?B?ZWp6emVKZWpub0kveWh1NjFtdWwvdi9NWFpoSDQ4ajZyTzd0aVU0eXRqdDJi?=
 =?utf-8?B?TXR4bld2dG1sa29wa0FzWklwM1dieWU5dEVqMnpPTUZhOC9yNWpTMkl1bEFu?=
 =?utf-8?B?SXo5U2ZVTWFSdDRYeUpTTUliLzB4eDBuOThISklGVG1zbENTNlMzUy9Oam1Q?=
 =?utf-8?B?ZWpPRmk2dUVoSXRkVE91OGRiNlk4T21LdWMwWFhzTGMzb2cwMTUzR1FDc3dR?=
 =?utf-8?B?REpBUk56QnpsblBTM2RaYUxyWFArTDJ1c2lkdlBwdjhoeCtNNUhQbG5PYXI3?=
 =?utf-8?B?ZC9DdDRhS05uRmk2SU4vaEd1OC8yUHhJc1Q1QzAvc1cxcnBIV0o1YVFjT04y?=
 =?utf-8?B?Yzd5VktxR3l3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3613.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TXVyK2dwemlwM1JPWXZ5WUtuZkJvVHFlSktQSUxITGFTUDFGZFJueUgraHg5?=
 =?utf-8?B?TTM1S3dva01NTGlUSEhqU213QUVmaTJZdnJKY3ZsQWhVR0RITER3bExUcXFi?=
 =?utf-8?B?Qlowa0QxM1E5bUpyUzV0TDNoblhYOWR5cmtuVWpCNWpYdDM4QmZVVldFK0tm?=
 =?utf-8?B?bkRBWXA5SUJyY2cvbzlCdkdBb1pTcUV6a2tvMzhqa3dEdk43M1BuallMN0sy?=
 =?utf-8?B?ZFlrdk9lYkFHQkJsb2Z2RDUvK0kwVDVWeUU1eE1CNlEwWm9kb2xsNmJLd3Zj?=
 =?utf-8?B?Z3ptd3dyMTVSeEo5U2Q3L09zYjdFeGxBUnBIdzlybUhjUjNDZnFDTVdENW9v?=
 =?utf-8?B?SWU0aDg2bzRUVU1UbHlzcXJvWm9valczcnlnNWxZR3BBZzdBYTJPMmt2cko0?=
 =?utf-8?B?V3g0VjY2ekYzNktLYzdWNHFNZEZ3dVBWazdtSzFvVTBQUmNFQ2RmbkJFZzZQ?=
 =?utf-8?B?M3FCUC9od1FYZ1FpRmw5bWR2QVo4TkxUSDhEb0hvMUJlQmdqRDFPUmowZFVu?=
 =?utf-8?B?UDVYYy8zb2RNSmp4T0Y4eHdPam12ekZlNjA3cGhTR2JXYVFoSzJ0MTFZSTJo?=
 =?utf-8?B?bkg1bkZQbFdrOWEwbVJPcGc1ZVhxRzJyZXZCdTZqTktmcmhvV2lWUkVvU2FW?=
 =?utf-8?B?NXZvSnkrYmlUOGF5eWVVcEhQYlgrRWxvaWJHSHFQK3M4cFIya0R4K09IRUt2?=
 =?utf-8?B?akR4bU9kWklLMS9EMzRPTzRMWkkvZmhyV2pZZkhnS1ZRQXhCcll5VS9raFVE?=
 =?utf-8?B?OSs4NG84Z2tublhCeGVnK1BvSngvMjVmOWtSV0ZTT1R0Rk5zQWVsUkU4eUhG?=
 =?utf-8?B?RDkydlM2QU1yOE41c1NZdTNwYVpsd3ZjeWpCaVRwTHhtRVc5VUVTQWdhaXQ0?=
 =?utf-8?B?cHZROFZrWmZtRFdXbktuaUIvREZxTDJsQW4yYi9XZ2paN2xYWnlKR1hvY04x?=
 =?utf-8?B?cC9FYk53K1BqN3R3NW9XZ2lDMTlzUHR4VlpRRm5uYll0czhPR3ArdW5XQzhJ?=
 =?utf-8?B?QnFNNjZvSmlRSS9aU1VkNDRNd2VzcDZnZ2pMeTMxb2VQcVFBMTdCOWpaRmt3?=
 =?utf-8?B?MTFJdytjbFFsOERsMFdMWkxqMUx3VGRIMFd1UzhENDZRYmE4cEoyYlV1MVd5?=
 =?utf-8?B?bXhYOE5SQkIzSjc3SmZ4VHVWZ3RuUGltUG9BMitJazg5UG5xMWJGTFFzRTY2?=
 =?utf-8?B?MDhpWGF2cmpKS2c2MmJqRmljRjlHaEVNZDRkVkxWZjl3U3FhNko4Ynk3UCtP?=
 =?utf-8?B?N0Q0SlhSTU1kQXFQWUh1SXRNSzY2S0h6Tm52NW9McGUwSFdvNWhrKys4M2xz?=
 =?utf-8?B?azFHTDR3d3pqdXBIbWZDYjFJaEd6b0I3RjFELys1RVBVdXFOK25sbVBwbFlH?=
 =?utf-8?B?Y2hTRy9OYm1MTk1ubTRLTUF2cHZYVFVicEVwcnRTNE9Mc1pZRWdJT0hLMDFY?=
 =?utf-8?B?bnhHQ0ZJek1uLzd6T0twU2lTMXpBNWRjR1ZPcWMrNWNhZ2toMjVvM2pKb2I1?=
 =?utf-8?B?QmNkNWV3Qjl5ZG5EV1JPMzg3NHRZamVPemFiVFd4OU9hdng4RXFUSVowUDVF?=
 =?utf-8?B?eVN3U2ZEQkVBV0JvWkVlc2lGYysxcWc4anM0ZGZvWjBPWHhkRDlOWlA1VmN0?=
 =?utf-8?B?WEROMWxJWThqRW41aW5IQmMzRm42ajFpVWduK3E5SWpaR1d5ODk1MHJzdnMv?=
 =?utf-8?B?OU9UdE1Wa3ZSNW5yUk9jdlhZVk9xYmw4bCt0TVByZ1hYR09wSXdyd0FBdTVn?=
 =?utf-8?B?dlhFN2Z0ZytOL0lXME5ibnB1SkovTlVzUVFSYmxsUGtqSFFQdjhYRlIyM3VI?=
 =?utf-8?B?SWtkdVNyaW9rS2dOUFpDajRKQ29mQ2dLbXplSW1XOXlRMzg4VTlScUUrMk0w?=
 =?utf-8?B?UmJEQXFWc1RNTHBwMHkzSFRjaEFxK2UzOFFrTWljSVJteTI4aXMzT0REdWZi?=
 =?utf-8?B?MGltaTlSZlYxNzVHeG0yc0ZWdjdzeTNhSUtRa1pTVWVISjU0enBTUXhldlNX?=
 =?utf-8?B?ZTFWOVN1MER6M3FrYysxYkk0cDJNRnlUMXhvY2FaZXh2cVNBT1RBaUFscTFC?=
 =?utf-8?B?Znorc1FoZjV5RGF1d2NuQWhPdnhBYkdlVktibE02czNZYVNiWUFPMjd4QWhY?=
 =?utf-8?Q?SALM=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02978cb5-aa71-499a-1306-08de2641f4ae
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3613.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2025 01:29:48.6706 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: McjwLFUsaZRCX00zXOW7sxEFIxwa/qkjnA39tiNQ4lhwJleC2q6BGl6j+jbQiilU
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB7687
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

On Mon, Nov 10, 2025 at 12:06:30PM +0530, Borah, Chaitanya Kumar wrote:
> Hello Jason,
> 
> Hope you are doing well. I am Chaitanya from the linux graphics team in
> Intel.
> 
> This mail is regarding a regression we are seeing in our CI runs[1] on
> linux-next repository.
> 
> Since the version next-20251106 [2], we are seeing our tests timing out
> presumably caused by a GPU Hang.
> 
> `````````````````````````````````````````````````````````````````````````````````
> <6> [490.872058] i915 0000:00:02.0: [drm] Got hung context on vcs0 with
> active request 939:2 [0x1004] not yet started
> <6> [490.875244] i915 0000:00:02.0: [drm] GPU HANG: ecode 12:4:baffffff
> <7> [496.424189] i915 0000:00:02.0: [drm:intel_guc_context_reset_process_msg
> [i915]] GT1: GUC: Got context reset notification: 0x1004 on vcs0, exiting =
> no, banned = no
> <6> [496.921551] i915 0000:00:02.0: [drm] Got hung context on vcs0 with
> active request 939:2 [0x1004] not yet started
> <6> [496.924799] i915 0000:00:02.0: [drm] GPU HANG: ecode 12:4:baffffff
> <4> [499.946641] [IGT] Per-test timeout exceeded. Killing the current test
> with SIGQUIT.
> `````````````````````````````````````````````````````````````````````````````````
> Details log can be found in [3].

Chaitanya, can you check these two debugging patches:

https://github.com/jgunthorpe/linux/commits/for-borah

10635ad3ff26a0 DEBUGGING: Force flush the whole cpu cache for the page table on every map operation
2789602b882499 DEBUGGING: Force flush the whole iotlb on every map operation

Please run a test with each of them applied *individually* and report
back what changes in the test. The "cpu cache" one may oops or
something, we are just looking to see if it gets past the error Kevin
pointed to:

<7>[   67.231149] [IGT] gem_exec_gttfill: starting subtest basic
[..]
<5>[   68.824598] i915 0000:00:02.0: Using 46-bit DMA addresses
<3>[   68.825482] i915 0000:00:02.0: [drm] *ERROR* GT0: GUC: CT: Failed to process request 6000 (-EOPNOTSUPP)

I could not test these patches so they may not work at all..

Also, I'd like to know if this is happening 100% reproducibly or of it
is flakey.. Also this is 68 after boot and right at the first test,
 and just to confirm this is 68s after boot and right after
starting a test so it looks like the test is just not working at all?

I'm still interested to know if there is an iommu error that is
somehow not getting into the log?

It would also help to collect the trace points:

int iommu_map_nosync(struct iommu_domain *domain, unsigned long iova,
{
[..]
		trace_map(orig_iova, orig_paddr, orig_size);

And

static size_t __iommu_unmap(struct iommu_domain *domain,
			    unsigned long iova, size_t size,
			    struct iommu_iotlb_gather *iotlb_gather)
{
[..]
	trace_unmap(orig_iova, size, unmapped);

As well as some instrumentation for the IOVA involved with the above
error for request 6000.

Finally, it is interesting that this test prints this:

<5>[   68.824598] i915 0000:00:02.0: Using 46-bit DMA addresses

Which comes from here:

        if (dma_limit > DMA_BIT_MASK(32) && dev->iommu->pci_32bit_workaround) {
                iova = alloc_iova_fast(iovad, iova_len,
                                       DMA_BIT_MASK(32) >> shift, false);
                if (iova)
                        goto done;

                dev->iommu->pci_32bit_workaround = false;
                dev_notice(dev, "Using %d-bit DMA addresses\n", bits_per(dma_limit));
        }

Which means dma-iommu has exceeded the 32 bit pool and is allocating
high addresses now? 

It prints that and then immediately fails? Seems like a clue!

Is there a failing map call perhaps due to the driver setting up the
wrong iova range for the table? iommpt is strict about enforcing the
IOVA limitation. A failing map call might product this outcome (though
I expect a iommu error log)

The map traces only log on success though, so please add a print on
failure too..

46 bits is not particularly big... Hmm, I wonder if we have some issue
with the sign-extend? iommupt does that properly and IIRC the old code
did not. Which of the page table formats is this using second stage or
first stage?

Kevin/Baolu any thoughts around the above?

Jason
