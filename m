Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D8FAB36DC
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 14:21:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD3F210E193;
	Mon, 12 May 2025 12:21:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="MEZyeCPt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM04-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam04on2055.outbound.protection.outlook.com [40.107.102.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A05310E193;
 Mon, 12 May 2025 12:21:09 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rawXTIPWrM7lJ9II7snN6fQGo0cbEkltp4FlmeW/JJgfmrIajtI7WUZ/5w3uYh/Qm05aiNc/zrjScEXXho8V60w80OdYq8Fy6LQQQ8BvKqcrcuEbjY5a5sN3oXPZZ8zndEsXUWlOSwigQMFsIcJ8J/hdFaILWZy/gLtQ6JGdpZPFnRn9mfzAOGMo2TFHtIselcz/sOoOrqCsElveek9f+yP2Frfk+Svi7fBbOiOLDec02zIg63p2biPbwMMWPXZv7JXSg69rtkHJIjRf+vY83WX5q0ckoOyPFzPIH05VOdptRtJB4aVd/u1Jb8IC5Lfhn9pyzdoaEAMwrFrCizQomA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UKi0sCakFkcVLBZNWBlNY/3tunfEMJVWjC3kGstuu0U=;
 b=dVyRloIzp63b6GFOyN+UYipRqNu2B+OjfkyirTxs2bzj5aODqKMFJOT22HPPmJbTn+ZBbP9v9JE2o5EEDbVO58TE63NqUhqIfqRjaCQjylOmzvJlKLO5b9aQTm+nQ77qV+OPZwW6WOsLpvWpqSOWZGHCj8+IO0q2NzPgbB3soPsnyrN5s3iizSNT117Z9W0opBpGaSE60KP3V1nrCGp0ZwxptSLTDFYfFBjs9UAk4LQ/+uVtzUsWeY5BODMvMhemvtHfMm6wHGhBi5NekW91xtvOG61PHduvfS5JccrltRE425NjzjoUmwsSPzyg7nD/0GthWiUdNzCaYRK3s2CaEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UKi0sCakFkcVLBZNWBlNY/3tunfEMJVWjC3kGstuu0U=;
 b=MEZyeCPtvEtkXjULrOA7FMEyaURfVg6VyL+Ofm+kV5v9hGJ3m0gj6SvXgXjPCpxdWVJEg9jssycJguKcUrr4qK0NrWxPhZyFyrLvCsxvYFkP1BXKJ9YkbQ6wJWhBSbSCeU62Fn7D77i8jsYztPbvA643pw09B4nGXZew90/253sgBWWQRifpmiLcIc+VIO8YAjSH+K90ZcUQnFehoKMvn4mz8rMidS/n37P6U7upX8yWe3xAFBEtZqK+D7VW6rO1cYbJV17p2qih96Lf8ada0jgdC7cRrGBcPDQP/rNnfvjg/uC1x5blcV3W9QBoG4PNtqo6nFebJNT4qafWyVwYYg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CH3PR12MB8659.namprd12.prod.outlook.com (2603:10b6:610:17c::13)
 by DM4PR12MB6421.namprd12.prod.outlook.com (2603:10b6:8:b7::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.29; Mon, 12 May
 2025 12:21:03 +0000
Received: from CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732]) by CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732%7]) with mapi id 15.20.8722.027; Mon, 12 May 2025
 12:21:03 +0000
Date: Mon, 12 May 2025 09:21:02 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "iommu@lists.linux.dev" <iommu@lists.linux.dev>
Subject: Re: [REGRESSION] on linux-next (next-20250507)
Message-ID: <20250512122102.GF5657@nvidia.com>
References: <SJ1PR11MB61292CE72D7BE06B8810021CB997A@SJ1PR11MB6129.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <SJ1PR11MB61292CE72D7BE06B8810021CB997A@SJ1PR11MB6129.namprd11.prod.outlook.com>
X-ClientProxiedBy: MN2PR06CA0002.namprd06.prod.outlook.com
 (2603:10b6:208:23d::7) To CH3PR12MB8659.namprd12.prod.outlook.com
 (2603:10b6:610:17c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR12MB8659:EE_|DM4PR12MB6421:EE_
X-MS-Office365-Filtering-Correlation-Id: 8151eca3-900a-4dc9-ffb8-08dd914f7677
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SG5JQ0ZYcVRNMGJVRGZzRmdoZmpFaFk2YWFCQ3JjVC9HRytHUnJNOUJUV080?=
 =?utf-8?B?QkYvTlBsMEtkZllLK1JJSjZOaW5FRFI2MCtUczc3MXVSMWw0VXpseVJ1NlJW?=
 =?utf-8?B?OUN4TjFUUEVPQWhHSzFrTTA5eTNxempybmtiYkl5dkhLcDY3UHdQT1FhZXpH?=
 =?utf-8?B?SkFQc2o5UlFEYnRyU0daN3FvMUtkaG8rWFo1RkkvVStTOSs1dTVqYU42cGl1?=
 =?utf-8?B?MW5YN3crdFJsS2ZSR2JMbW5TTEtLeDc1QkY2RTk5eW5JRE85VkhCdDJHUkNa?=
 =?utf-8?B?MklsUTV2bVU1dG1yUUN3M2FXUnMrQ3ZrY00wUXQxL0tEVXloaWF1M08zN09k?=
 =?utf-8?B?UVpUbHFncjhYaFRCRjZtYW91dWZ1Y0hwVjZRMUJ0SURvUWZwdHFrQUNma2JL?=
 =?utf-8?B?UnpqMlQ3WitzcGVyc1RscmVhQ0xlUklqTnJibFJVcVFZUHNwMTZFTHZ2SGtS?=
 =?utf-8?B?d1FkMHJGZmQ4V3VFeHBwbWNRc3d4ZWhId3F6cGFxVGZJbTZseEtxQm5oT0Fx?=
 =?utf-8?B?VzFQczRoRzh1YjFCTFhBVkJyTzZMNWJzMmE4R00xSUpQeXJxUTg2SytSTHlK?=
 =?utf-8?B?Q3R0TW55QWdpaFNUUnhHUkp1aERSRmlrbjFJNHNvQTNzZ0ZiTFhqdTk4WTJY?=
 =?utf-8?B?bG5GMk5kMVZoV0xIclRPdXBOVlVMNTAwQjBpK25LVmlSYmo4Zk5UT29mK0Yr?=
 =?utf-8?B?TnFORTRSNTMyWTJneW1FcUhpY3k2ZkxmMTVFaW9SQUloNmprKzdqVUt2Kzdm?=
 =?utf-8?B?d1BmZi9FZnNlQ2VxTDJWcUZiSnVKQTNPbWVhOW5WL0NUQlJKVlJnL0FxWU1y?=
 =?utf-8?B?VDRTcVIrR3VFMHA1OFFqdURhNEFWRFp4dlN3d3hFaFJaSDZWd0RVRE55RmIw?=
 =?utf-8?B?VE13UFZ3UGppd0xHUTJNRVJrTXJuOHlPa3luVCtwRGI0MlpNelhPZ01Obnl0?=
 =?utf-8?B?NzdmMVBOVTdMd3lLZWQ0NFk3U1N2QTFZRUNLdUQ5eDc1S2VaZURYc1hUVUdp?=
 =?utf-8?B?ZXhqVE9ZcFA4SkdEVktRMnNsa2ZYV3cvYjdUL0hXRmIwaTlVQXhsY1BZdG1v?=
 =?utf-8?B?c2JlWTJPUDFuRFBnMCtxRmVldUVtd3dFL1NnNWx0aTlvRDl1VGxlRG9RcmxD?=
 =?utf-8?B?bXlrSHRPRDBFbjVHdkovb3JQc0FSUTQyV0ZyWlRoa0dFTllQL0tidGYzclRD?=
 =?utf-8?B?RmNmWXUzcURraFFFYWs4c0UwUmh0YlZORzhBTlpWWExoZGZrK2JoYTRuRzZp?=
 =?utf-8?B?bG5Za1haNEM0cFQxZDBnRTk4UDBGMWlFZ1lyb2Zrc0k2L3JWVG94K1o3SldM?=
 =?utf-8?B?VXdONGJZU3M0MDNRejltM0M0WHdSbnJzUXJVYWZlTGZpak9jc0sxc2p4QXlk?=
 =?utf-8?B?NDM4TVFCem56VzdPM3ZYeG5rUmZra2g0VW1HL0daTWNhcjZVb2FuWGJjdFZs?=
 =?utf-8?B?eXpmV2g4dDNPUDNYOElUU1FmVFpBam4vR1lYVE41cUE3MTV5bjVtSVlXVmVO?=
 =?utf-8?B?YTd1aDBXSGpoOFYybkUyNlBrRXFrbHcxMVRma1pLb1gzdjM3M0o4Rm54Wk1k?=
 =?utf-8?B?Nkpra2lWKzZjTFRXZVUramQ4a1ZyenRVekN4Y0JDK1FEQ2xhY1Iva0ZlZXVh?=
 =?utf-8?B?cTEydGplUituTFpZYWtCNHZmRVhwUWdHaTYyeEN4bkRFYTlEcCtxRmFpTE4w?=
 =?utf-8?B?S245bEJmOGZEcXMxRGpHTlFFb3N5OUFLLzhQcTRGaU5Nb0FUZDgwVUVUTUVN?=
 =?utf-8?B?UEFIYXhiQmxGSFYvS1Y1Ti8zb1ZpZ1ZqMU8wamEySnRpSWdnbURqNmJXdXR2?=
 =?utf-8?B?NWp0S2k5NGh6NHVKa3BEcFNIZWMwT0JwYUJ3U2toSDJkNkp4dlVQYVFFZnlp?=
 =?utf-8?B?WVg1bmtCQWNFTkwxa2x4YTFBVUErZVdtWkJmYlVoVFdzaUh4Tzl5b0ZvMzJK?=
 =?utf-8?Q?lNVRLXo5G3M=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR12MB8659.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bkpteXpqMnNldlJDb25MUGY4cUpFT1l0QWQxR2Q1NlN6S3RHMmZ6NDhocmlm?=
 =?utf-8?B?TTlpQ21FTEVOcE5QWS81YWUreEUxbVN5SW9pUmJHWkdDK3hkWFUyWUd6cUdC?=
 =?utf-8?B?T2prdGIxbDQ1Z0NCQ01XSDVXNVZmZlEwMVlWbU45ZG54VGtIU0dMd0ZNUEs3?=
 =?utf-8?B?OWZVTHdJSzdPM2tzNk5ENTM5YVBtcjJQSEZSV1B5MEhzckFFVjBZQmxFSkc3?=
 =?utf-8?B?N29iS0xhVXBhMTc0dCtDS1E0Q3pRdVJxRE1lVkphYk1YdVlkbzN5Vkc2Vnlt?=
 =?utf-8?B?ZHBwcG9yQTdWMldoTTVIcVRra1Y2eGJad2xzTmQvblpvMk5EZCtQQ25kSlJ5?=
 =?utf-8?B?emoveVN0UDVaU3A5NlM0eUZJd1V2Z3M2N0wxZTYxR1N2VThLdnpjc1lVVVV5?=
 =?utf-8?B?Uk5QUHlWTUovQXZRN1VsUXVOZnJSc3JiQTdSVCt1YTJ4Vk1PS1Bha1Fxa29v?=
 =?utf-8?B?a21uQ1A4dnpzbGpnQlZnMjUzcDhkNjAzQmg0b1NBVWJkK2NsdTZsbjBDaTVZ?=
 =?utf-8?B?Q0JsWDE5Z2s2TllQKzIrNEkveTlnN2FzK0hhY1ByWGR5NkY0aDU1NE9pYm00?=
 =?utf-8?B?S3YweXpFaWY1cVdsL1c2K0YycjZkZnhCcEJiUnhmTCswY3FKbyt0aWQrV1pj?=
 =?utf-8?B?NDVDRW5TWHdFYU5HTVNzMjFsaEVNMFIxQy9qckNzbDdFcWxpRWJheXFvdFR0?=
 =?utf-8?B?aVFJd2Qwb2J3ZDcxWDlUdXd0V1pmQmx3SkVad25CSElWeXV2VDVWbzNHODBU?=
 =?utf-8?B?ZzhTdkZvcndSZzAwTjc3VnZOOHl1NCtzYWdYQnYyVTk0SzVnZndmWWs5VWdK?=
 =?utf-8?B?M0Iza2l6NXlmYWVjRkFxcWhtRjZteVBDUWdkN01Yd2RISXlmbnk0d0JsTnho?=
 =?utf-8?B?dlRzQWwxcG80RE03TDR6SUlFV3NnaHlNVzlSWTVxVnUzUTFlSERzdkZySVAr?=
 =?utf-8?B?R3hBWFhLdGYrdXBpcTRCalZvOTI4bGJFVGFxcWlPQlpTMHdka2orK2EzdTRK?=
 =?utf-8?B?SDNWZDhZQzUya3NiRUJ0bUcwUFQxZUVDZUd2WFBlTXdyMXU3eFNPUHpBa0xP?=
 =?utf-8?B?cFoveEE5b0tIVHRlVXpBUFZHUFNDdUdTeHZJcE94TU5OM3Y0Ry9mYVRSVUV5?=
 =?utf-8?B?WW1TWGxESVRwVFlxejdLQWsxdDhFejNpMFRHOWM1OHlhUHo5dXkrVlduWk5r?=
 =?utf-8?B?NklMYlZDL0g2cWJPamdMeWVUSGpKL1Z5MHJWMGo1ajVFZkpxa0U2SHY5NUNk?=
 =?utf-8?B?aGFLUURQS2dzOWswOXlrTnFza3kzd2QzMG04WHhtSjZLSWJOZVgwZFRrMEY0?=
 =?utf-8?B?YVdUZjZvbll2c05Md3RDY0RpT0VUQkUybFBlNG90TjBJdGVEdll4WFljWlJW?=
 =?utf-8?B?M0NqTnVvRkhVWllwM2dQak5mQmRwUUY1NFc2S1RobVR6ejI3S25ScnpMbGt2?=
 =?utf-8?B?dldaWUxSeTBpVHNlQTcrVzFlNzlRc1RwLzE0UENUWjN4L0R2dkVNNjdjK0x4?=
 =?utf-8?B?cjNLU21vbnhGczJYVnJjb3JxbVZxWG1IQk1nVFhGcmlnSFRDSHcrNXVpYjd4?=
 =?utf-8?B?cGVkbGp3RERuZmdGd1hjb0lOVy84LzJoWVM5akFKWkNpYzZDRC83YStnaUhN?=
 =?utf-8?B?ZnkybWcwZmMrTXdxWU9aV3QzN2NObGZiR2Y4UldNSlNCbExxSXhPdlEzLzhW?=
 =?utf-8?B?QVNtdXNhdjM2Z3ZBRktxeDJCd1ZRazJnMGNqUHdHZjRBUmZUekxZRHFZTVcw?=
 =?utf-8?B?S01LWjNJR0JaOUl1NFphMTlIT3A1ZWROSmdLalNSaU5EVXM3Z3RuR0duck94?=
 =?utf-8?B?VkNzd1ZJQUZlSVN1S2o0dFcrQWIzTmZIYTFQRThZYUJUWHU0bTluSDBIdHQr?=
 =?utf-8?B?SHljSTkyenliV0o2MytmdzA0eUVPbzBQV25QY3pIbXVNbGxIRlJ0THY4d0hM?=
 =?utf-8?B?N1BubVBwMmFMUE5HSWpVUjY4dklaOVlvY3pTeThHQytlVmRRMjZ6QUp3TFY0?=
 =?utf-8?B?ZStLVWpNY2J1OUFtVndMcEhkTXZBZzRQVWVTSkwrelFjc25tUFcyZVBQMmRU?=
 =?utf-8?B?L1o0eUZOeUxiNGt5K2tlTVlpbkVNZEJuRHl5amVTY0QwYjR5MmJJeWo5aXBF?=
 =?utf-8?Q?Vnu4=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8151eca3-900a-4dc9-ffb8-08dd914f7677
X-MS-Exchange-CrossTenant-AuthSource: CH3PR12MB8659.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2025 12:21:03.4078 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l3/chaEN0BXNjPFhQbH2OmRF/yWXWiU+6FCKRTeur4PHkv7XhACn8uVk08rqppXF
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB6421
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

On Mon, May 12, 2025 at 06:00:39AM +0000, Borah, Chaitanya Kumar wrote:

> `````````````````````````````````````````````````````````````````````````````````````````````````````````
> commit 13f43d7cf3e0570004a0d960bc1be23db827c2ff
> Author: Jason Gunthorpe mailto:jgg@nvidia.com
> Date:   Tue Apr 8 13:53:56 2025 -0300
> 
>     iommu/pages: Formalize the freelist API
> `````````````````````````````````````````````````````````````````````````````````````````````````````````
> 
> We could not revert the patch because of merge conflicts but resetting to the parent of the commit seems to fix the issue.
> 
> Could you please check why the patch causes this regression and provide a fix if necessary?

Could this be the solution?

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index 0af1ab36283cba..7d2b51a890c75a 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -154,6 +154,8 @@ static void fq_ring_free_locked(struct iommu_dma_cookie *cookie, struct iova_fq
 			       fq->entries[idx].iova_pfn,
 			       fq->entries[idx].pages);
 
+		fq->entries[idx].freelist =
+			IOMMU_PAGES_LIST_INIT(fq->entries[idx].freelist);
 		fq->head = (fq->head + 1) & fq->mod_mask;
 	}
 }

Jason
