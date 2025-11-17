Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E30C64D94
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 16:23:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B82BB10E3D1;
	Mon, 17 Nov 2025 15:23:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="uovYhuaO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from CY3PR05CU001.outbound.protection.outlook.com
 (mail-westcentralusazon11013054.outbound.protection.outlook.com
 [40.93.201.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCC3F10E3C7;
 Mon, 17 Nov 2025 15:23:04 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=USwAFeRqQ4XEuHSaxh3v+/5K0F2tZvC9G2Ux4TYaTo78ILqtz4+0G4nhKnJ/mduUtejiedlbEh3IzCO7mT1tIFy2wKLGXlHl82/zsPVEkt0NzEyeM03Yf4OfRMyOt2p6vLwbB94M897WZd/FYTUoasDcdDSS4p8R0Vmvc4nPKfdd6K8uiJEvVh4uv4mmP6uEy7E2CfPco18kPiTACvguZr4le/8wUQOwZW/u7jX4mth3aXYyM/I/wCS79IStBmkipnYUSAl8ms2PfvrrC5X/XhIToeL5UQn/SIMuPmxGa1FVGzgyVrpVAqk7xHbjUYoWt31PJyoMrnIpmAqnFGj7Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ytp+Js2eZEJcWQU+SQP0tA2xK2sB0HL4exn+co22SmY=;
 b=F3qWqkRLgd9AhRS8+bAK1lkG1g5K0kIs2DojPhTwvOkgBv2YeDlnsIt6JhzpiCEgy97EFjRD1glo4S04iTLP1Qm8T7mNAyfAnfyW3lPjR33u4P4MPPkIlCJd9HT3ifrj66gYjvCPd39V0y00E2+9kt3VqFH48idolD+3UyfAy+FBdUTtRswIr+jYBuOLbQWRg0kRvUEED+msOztkvAbE/CoobY1LkewRMLxudeYRK7QZkxJiVYA1ZBq1OD1ulOi31cuz7fNkghFzOjTO/Skgqy+xgdhusVANAHObERy73OqI+gO1SDL/fOuOXkigP4A5KkP3VSJtW5oHDSA2Y1iiOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ytp+Js2eZEJcWQU+SQP0tA2xK2sB0HL4exn+co22SmY=;
 b=uovYhuaOFkIy7BzSHkA2XGv5fDHBU+JAkCYi7ip/z92cZnnoGzscK047JZItYYVRdZFLkITahn/nTYFUISyEqELsgQ0NqpgwzW8MqTiIOTJJ5rWSqnN9SmkMXDT1VP9Teley4wtjpEPYjzoBkLPR/zLmQvxx67URZIj0e2Fqfnl6vwZ2WuKslvuNanCeU3tvQ5qFo1OxAQypwPyd/nT0VONW3RXQzWipVN9YxdrhJ/OCdTeoq0lD7EEJdgEytSVhg8BvxsCYGs+01pTqDaLj8TCFldTu+cKMN0eFNF5ila67YdmHru3uAec08qltyHQYdYaNOQSoGpoWZVGjVFtWiw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from MN2PR12MB3613.namprd12.prod.outlook.com (2603:10b6:208:c1::17)
 by IA1PR12MB6116.namprd12.prod.outlook.com (2603:10b6:208:3e8::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.21; Mon, 17 Nov
 2025 15:22:58 +0000
Received: from MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b]) by MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b%4]) with mapi id 15.20.9320.021; Mon, 17 Nov 2025
 15:22:58 +0000
Date: Mon, 17 Nov 2025 11:22:57 -0400
From: Jason Gunthorpe <jgg@nvidia.com>
To: Baolu Lu <baolu.lu@linux.intel.com>
Cc: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 Kevin Tian <kevin.tian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>, matthew.auld@intel.com,
 iommu@lists.linux.dev
Subject: Re: REGRESSION on linux-next (next-20251106)
Message-ID: <20251117152257.GB10864@nvidia.com>
References: <4f15cf3b-6fad-4cd8-87e5-6d86c0082673@intel.com>
 <aRUK8vDZ3dE1zNxL@nvidia.com>
 <c0f614d6-cf41-4585-963f-bb6081c3f39f@linux.intel.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c0f614d6-cf41-4585-963f-bb6081c3f39f@linux.intel.com>
X-ClientProxiedBy: BL1PR13CA0121.namprd13.prod.outlook.com
 (2603:10b6:208:2bb::6) To MN2PR12MB3613.namprd12.prod.outlook.com
 (2603:10b6:208:c1::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR12MB3613:EE_|IA1PR12MB6116:EE_
X-MS-Office365-Filtering-Correlation-Id: 45d4a9cc-918b-4644-ab6b-08de25ed3088
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|3122999009; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M1NOdzg0QjlCVWtvVXdpanR5NnhqL3ZaMzAxNFNuK3ZmQjhuUmZBZ2NXYURo?=
 =?utf-8?B?cnlCK2w3STVNVWhIRmdhTGJpY3JCL0NRQ2U5Yi9RcHRBZU9OS2IvRVh0akpD?=
 =?utf-8?B?QmFQNWpVN3FTSlZlbjlwZER4UXBPVlVZNmlaem9LTEo3UWFDN040Q1hJRFBK?=
 =?utf-8?B?L1FlMmdlN2N4YUM3L2V3U1d6NGFocnZ1RmZYNnBtblpMMmNGZlFlaTNWbzhM?=
 =?utf-8?B?aVFUZzJQbEJyTGhOUzYwdjZ4dHh1OHk4SURkcWlxYTBFNHZnQ2p4dnc2MGxs?=
 =?utf-8?B?aUR3OVpUUnJFSStZeHZLZVJKbk8yUUlpbEM4VXpHN0JRRHZlWlFuU0J5Nkha?=
 =?utf-8?B?Ym5SY3ZXUnFNMmZrQ25NY09hT3EzYnFLRmY1Y3RTdVc5dHJvMWFCRS9xa3Vu?=
 =?utf-8?B?enFhOVZzV2crZUdueHZUUmJ1UUtUQ2hxR2lLL3ErRURSd1FRMkg4c2FNaWlM?=
 =?utf-8?B?YnNFU0tRZkdDcGhPRW5na2FqOFVrdjZkcVRFbXByWVBQY1FhQzFhSW53NThK?=
 =?utf-8?B?alM1ZDc4ZjhSeTc3OW5HUCtleFNTcnIybWxIVTBpN1p2MFlTS3JzREJGTGlT?=
 =?utf-8?B?d2R2bTM5TWVGK0czNk9KL0F0Z1JXYTNGVnlyNnRhUTRoM2ZHL1VoTWZnTmc2?=
 =?utf-8?B?YzcxWHBRR2NHOUp5T2lwSDQ2WlUzZW5obVVrR1pwV3Y5Mm4yRUUramRCT25V?=
 =?utf-8?B?Z0g1ZkhzSkpubTBTdzl2ZWd5UkpMc2V3Qy9RN1F1dkZzTDN4bHdPM3pkM2Zx?=
 =?utf-8?B?VkpkVlIzUUc0cmxDREpPb3RSQlYvUWI1dWx6bjZNUHl5dXEvNU5GNHBhQmht?=
 =?utf-8?B?cW5zT29mTkVTU2xMd2FvdWhhSGRSMjN4ZTF3V05pUkRBN20wV0l6S1lidVcx?=
 =?utf-8?B?UmFac2I5LzNJSkc3QW1PWjRBZS96V05JR05ESkt5ZHo3dEN1bzQwMm1Yamt6?=
 =?utf-8?B?S2ZMVGdteHdMYTZGdm5wanRtbktHL2RpTVNMMEIwUm9JNkh4aVpFVHFvdFJi?=
 =?utf-8?B?WTcrSzFNclJtYnBtdzBJcit0LytqYjJLQjNJc3BPTlFJVWk2dVBWYWI1d0Jl?=
 =?utf-8?B?dHI5aHpzaVQrTmlYakdOb3JPMWlGOFltRjZqQ3gxV2JrOVVHV21MUFo4bGtL?=
 =?utf-8?B?emZRZFBZVk5TSzhZS0VIbnBwSXFUZVMrT09DcUgvUkx0c1VlcXlMU0l6K2dB?=
 =?utf-8?B?T3M0eW5oS2VwMC9xRForSzFnRDF1bmJJRTA3dHRMWW1RSGczbmNQSitwMWps?=
 =?utf-8?B?azN5ZmpaQ1hBZC9yUnloS1VjeG13eFE5czRVZTNPelpsc2hSeU84NW4xQ1Bx?=
 =?utf-8?B?LzlWUGFBYWdCc0hTVkJXTlFrcUJhR0ZzR1c5S0tXdlVORk80Q2lsRXNzVVlB?=
 =?utf-8?B?VEhzNnYzQ0Y5TG1Da2s5UituUXpzOXRrMm10aFNHNThDNkJHWW1rbHBXY0R6?=
 =?utf-8?B?SVI5bVJEc3B6em82UDhPRWV4Z3RLYVRsMDdXZ0dXRDZpYUVTbmtUVkZ3ZU80?=
 =?utf-8?B?K3p3c3puUkpyQjM4dTYrRXMwUUthcnJ3cEJZQk9NdWgySzY1bGlTNHFyaTI2?=
 =?utf-8?B?aUVxSU03TXNPYk9IaStNWENsdTdlODY5MlVseGZ4WkEwa29VM3FYYWhKaHUv?=
 =?utf-8?B?WVhBSWNjK3pSUENuNDYyamhxUyt5RS9CZ01PUG1ZZzhLc2dQbW5mbjNFemZR?=
 =?utf-8?B?blZkbnJUeWYxVC9Wa0t1NnBmcE9iUmJSeERZUzZFRmlmWG5XVTRxSW8wZlN0?=
 =?utf-8?B?MGNLN0djUU1DQ0VuWFdsakdtVUc2TnowaXg1TEM5elBhS01IU2FZc0J6VFZQ?=
 =?utf-8?B?QzZSR1E3bFBWUVF2RzFqOUdQc0hmRzM1US9VVi9WczlidkJEVkJ2WnA4NHRs?=
 =?utf-8?B?VXM5VWRHc3gwN3NTZ1owN3RsTmhsQWNCMW96cDlSUVdBUHVpOHJidVhWdTc5?=
 =?utf-8?Q?+EAs94V2eC94mupvm6zj98v2L3T8EkQ7?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3613.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(3122999009); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZEVYNEVLWm5BS3UvdUUvU3JKQWhuTWJPL25RRzFaWWVHR3hmZitOdXJLRVdB?=
 =?utf-8?B?QUM3SGZjbTNnNVdUd1R0eXFRLzhuRHFsTmpmVGNmQ0hHSXdDZElVWWRjMk04?=
 =?utf-8?B?Ky9nRDlIQ3Bua094TENDWlRwaEZtNSs4TkV4MDkrNVZSWVhGbkFEVzQ3WWpP?=
 =?utf-8?B?Y29POXVjZkk0aHJ2R0o1UXRRQWNxL1E1TmJaVUtJSEt1VVBSeWVGenhhazJ0?=
 =?utf-8?B?TUdYYUM5ay9La3JyRjhBWlVDcVI1ZmFaTUNKZUVjQ3ZNMmVGWFg1ZkIvNFFm?=
 =?utf-8?B?dU5ja1BlRGFHT2Qzd0RqTjdqdmF1WmoyQ0pZQnZEQitnb1pmcnJVTWdVaUJY?=
 =?utf-8?B?V2VyQVZPN1FkRklSazc5WmlZQXBsTmFPT1BQNUcrcnVTU29ub3UwVElQV1dU?=
 =?utf-8?B?L1k5VStJZEl0aE9jaCtCTnIrZzU4N2pmZG93T3J1Wmplbk41YStPaU9mNXpX?=
 =?utf-8?B?VkZ1NWVZOGc3M09OdTNFaUFLSHdkelBCRFhZb0cwM1ZNcGhWazU2WlRTOXpQ?=
 =?utf-8?B?dnpoOERJVG1mNmNzSnNZaE9YaE4xZEJ4bVYzT0ZBcHVkRWgvdXVKNTlYemJw?=
 =?utf-8?B?T0NrRFBBV1FWMFdWNG1YSUVPS1c4NGYvWWxPY1dzcWZGOVRVSUJqODAxUGJD?=
 =?utf-8?B?dHcwU1NrZHVDRXBMNnZRZkpkV2JnbXpFYjVFQ2JRRTY5UnE5blpwRUpsdXhJ?=
 =?utf-8?B?UEYxemQrRE83bzgrZWVWWmxSY005MHZwenV1T1NCVlEwMmZPSGpYcys0UWNQ?=
 =?utf-8?B?RzkyOGtTbEVxT1QyNWNSV2xpU1dseDJCSGpwZDBlMkNRcExZd3dtZzlxTHFl?=
 =?utf-8?B?cGFwSmFPeGhiZTJyMENxSmJkdVN5emcxM3NUNTRTbUx1ZnFXU2NkWmkzaFlH?=
 =?utf-8?B?a1l4YkFXNDlaYU1IZy9VQmtrNTZ6OHR0ZHp6VHdabE5WT3lMdjRxcnVlWkhH?=
 =?utf-8?B?Q2NVMGdrNEl4UmpZcFlMcndyemx0dHE1ZUlZQjVlQUNZYi9vRUk1eEQyd3po?=
 =?utf-8?B?RHh6cUxuODMzSzR1NVBDQzRhRm9raEhEMjd3UldIT1Z1YWFnYWFOL0xyNmJi?=
 =?utf-8?B?SGFsZWpDK0hoZlc2QlYxeDNJbEFUL3ByZHFuVENIR0NvSkhmVHFRVkJwcldM?=
 =?utf-8?B?MlhZN3VLaEZJcHNwY3ZLM0VLSDBkUHVPWnNITFNHcGRpcENmVUlxcWpKd0lC?=
 =?utf-8?B?cWZHUmZCMWlYZ2NpV0ZnejhRcGpwS2FkbTVucUxoVGp5QnZhRkZrcjY4MWJC?=
 =?utf-8?B?MTBKQzgzMlF2Ni8wdC84akYyaXhETDF1ZU1RVkRTSTRaU3VkczB3MDVaV05Q?=
 =?utf-8?B?L0Q3WFpyM3EzTFM1U0xTdHJRc2VwckNBc0dDTWNrdDMybzhPeTJPaDlTTDUz?=
 =?utf-8?B?VXdBMWVzODhURHJSeWlEd1VHQ01aY21BTWZiVnc4NlJKNkhDOHhCUWJPSkhF?=
 =?utf-8?B?OWkvZTYvdmo1enlGL2JORDlWaXNFa2VSOTl2ejU4US9Jbzc1Y2pNNlpDWkZW?=
 =?utf-8?B?aDhpbUFEMDZvZWpubkVEUGpvU3ExamRVWWtBaC9SblF3alBWUTczcTFwOUxv?=
 =?utf-8?B?d1dWRDVHT2VWUm16Z0s2a2NtODdUSjdjYWNqV1I2V2d0WDBpRm9LbVpnYmNO?=
 =?utf-8?B?WEY1cVpncnkydENkMU1nNkNJNEdZaWh3aGloODBiNWNZSk9yaGJQUklSM2Ey?=
 =?utf-8?B?bUErNHhtZi9tMWFUYWJiSCtiS3lUWERPY1NVSERIQ2tZR0p6bFdwOS91dmlY?=
 =?utf-8?B?UUJ1L1pxcjBQYjhOWkh0M244SnlmOGJwb2hLR1ltOGNsR3FXZlV3WnpWMVZO?=
 =?utf-8?B?L3Fnb1VSc3BwQVFxcmJWVE40QVVpUFJTdzMwTWg1ZWNubm8rc3NMZDFpWkx1?=
 =?utf-8?B?VjY2b0wyNS9zVWdiQnRPeFJmNjVDVENDYTJZRm1HT0x6eTk2VWh4TWpZYTFr?=
 =?utf-8?B?cjhrY1IwK3RsRmxKUmh4VkxHY1hob1FFbVhFdHVpTXZ4Zlg0VkY1bG5QNTRl?=
 =?utf-8?B?MFVzYzQ5b0VsZDdBc2FsSVFDbGF3aktQeXlJR1IycWNKYVJMYUUyeTVhMHk1?=
 =?utf-8?B?UkpWcWo2VDhJeGc3U1hYQzZXODNvdnoyczYzMWFrWmNLN29oWVVLMlhxaHlD?=
 =?utf-8?Q?MtSs=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45d4a9cc-918b-4644-ab6b-08de25ed3088
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3613.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2025 15:22:58.6570 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: z6rGSenWf6GKWkjD/Bn3sYWB1/Q+Qq1/Gd2KJQIHDRKsvbbRtv7fbuXTwAKhi8e6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB6116
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

On Mon, Nov 17, 2025 at 08:54:59PM +0800, Baolu Lu wrote:
> On 11/13/2025 6:32 AM, Jason Gunthorpe wrote:
> > On Mon, Nov 10, 2025 at 12:06:30PM +0530, Borah, Chaitanya Kumar wrote:
> > > Hello Jason,
> > > 
> > > Hope you are doing well. I am Chaitanya from the linux graphics team in
> > > Intel.
> > > 
> > > This mail is regarding a regression we are seeing in our CI runs[1] on
> > > linux-next repository.
> > > 
> > > Since the version next-20251106 [2], we are seeing our tests timing out
> > > presumably caused by a GPU Hang.
> > 
> > Thank you for reporting this.
> > 
> > I don't have any immediate theory, so I think it will need some
> > debug. Maybe Kevin or Lu have some idea?
> > 
> > Some general thoughts to check
> > 
> > 1) Is there an iommu fault report? I did not see one in your dmesg,
> >     but maybe it was truncated? It is more puzzling to see an iommu
> >     related error and not see a fault report..
> > 
> > 2) Could it be one of the special iommu behaviors to support iGPU that
> >     is not working? Maybe we missed one?
> > 
> > 3) I seem to recall Lu tested the coherent cache flushing, but that
> >     would also be a good question, is this iGPU cache incoherent with
> >     the CPU? Could this be a cache flushing bug? It is very hard to
> >     test that so it would not be such a surprise if it has a bug..
> 
> I had the chance to remotely access the test machine. The test device is
> 00:02.0. It has a dedicated IOMMU with the capabilities listed below:
> 
> CAP                     0x08            0xc9de008cee690462
> ECAP                    0x10            0x0012ca9a00f0ef5e
> 
> ECAP.SMPWC=0, which means this IOMMU unit hardware has a non-coherent
> page walker. Kernel v6.18-rc5 works, but when merge the changes in the
> iommu/next branch, the test case failed with GPU hang.

Okay, so it probably is coherent walker related somehow..

> The PASID table entry with v6.18-rc5 kernel:
> 0x00000001067fc000:0x0000000000000002:0x0000000000000049
> The PASID table entry with iommu-next kernel:
> 0x0000000105a86000:0x0000000000000002:0x0000000000000049
> 
> They are the same, except for the page table pointer.

Ok that's good

> On another machine, I opt-out of the ECAP.SMPWC capability and find that
> the clflush works for an idxd device as shown below:
> 
> # dmesg | grep clflush_cache_range | grep "idxd 0000:00:02.0"
> [   45.199811] idxd 0000:00:02.0: DMAR: clflush_cache_range:
> 0xffff9ff04eaaf000, 1000
> [   45.200923] idxd 0000:00:02.0: DMAR: clflush_cache_range:
> 0xffff9ff046352000, 8
> [   45.202082] idxd 0000:00:02.0: DMAR: clflush_cache_range:
> 0xffff9ff052bd3000, 1000
> [   45.203184] idxd 0000:00:02.0: DMAR: clflush_cache_range:
> 0xffff9ff04eaaf000, 8
> [   45.204236] idxd 0000:00:02.0: DMAR: clflush_cache_range:
> 0xffff9ff052bd2000, 1000
> [   45.205318] idxd 0000:00:02.0: DMAR: clflush_cache_range:
> 0xffff9ff052bd3018, 8
> [   45.206370] idxd 0000:00:02.0: DMAR: clflush_cache_range:
> 0xffff9ff052bd1000, 1000
> [   45.207451] idxd 0000:00:02.0: DMAR: clflush_cache_range:
> 0xffff9ff052bd2ff8, 8
> [   45.208503] idxd 0000:00:02.0: DMAR: clflush_cache_range:
> 0xffff9ff052bd1ff0, 8
> [   45.209555] idxd 0000:00:02.0: DMAR: clflush_cache_range:
> 0xffff9ff052bd1ff8, 8
> 
> It appears that new page table allocation, page table entry modification
> are all followed by a clflush_cache_range().

Yeah, but maybe something missed? Or not working at all (like
scrambled values or???)

Is there any evidence flushing is working at all on the iGPU? Like it
is totally broken or is there some rarer corner case that is not
flushing?

This is the least testable part of it so it is a good place to have a
bug..

Hopefully today I can write you a little patch that will force flush
everything, it will be really slow, but if it fixes the issue it would
prove the cache flushing is at fault???

Jason
