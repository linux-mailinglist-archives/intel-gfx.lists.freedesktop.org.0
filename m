Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 572BBC53CC7
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 18:54:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EF0510E19C;
	Wed, 12 Nov 2025 17:53:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cRdxAGyj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E88810E1D1;
 Wed, 12 Nov 2025 17:53:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762970036; x=1794506036;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=R20n+VLO6pvNrt0Mo4p/qRYjjYMHTy6mkv81vcjT5/8=;
 b=cRdxAGyjZH/vKzkErb4L6m4Ag1J0FyU2XgEC5cCTGHbxstNcXqMYUP12
 YQBEKfS6/EnFZNnAlLNxnglhQ4gXNkotnLUs0yl8usyOrs/bAc7V4mdlG
 +emGZwyaZemFmXow8Os42JnDb1dvxjVptRntHDlGrOIMrToa346ABwEw7
 FD/YCZI8KNKXLjuzDZ4L0+x7hKDZfsierssdmi121iRh13Ykgn+dN3rNv
 OaXwZOVeCUWTSyc2FoZaj8cvqGVpgYyKe5dQQ4djZeWyXr6FbNWLRMZXL
 gH8JRHbCcIByk/A+3V1byoGGPU5DuqG1FifpS1XWrUc/dNo57YWjaqRDc Q==;
X-CSE-ConnectionGUID: a9bicL4kTf616DSHxhLpBQ==
X-CSE-MsgGUID: b1ujOqfsSwWHd2mxQneR3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11611"; a="65077152"
X-IronPort-AV: E=Sophos;i="6.19,300,1754982000"; d="scan'208";a="65077152"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 09:53:56 -0800
X-CSE-ConnectionGUID: 8Aj1sa5WTW+X07TGtaRmeQ==
X-CSE-MsgGUID: VIxXEy+bS0+MkgibG9Qg7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,300,1754982000"; d="scan'208";a="194264184"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 09:53:56 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 09:53:55 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 12 Nov 2025 09:53:55 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.35) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 09:53:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YhLhUnLfWV+UL9CZtEvHVdbSSm6GNPoHVrOerj7xIoRK2y6yuilRp0AMAvsGTQ4KmKegjy3zGbdLb3TKTleIhHmESWw14/IvxkHo3lfYvqDz6u2Jah4QrjYvuHuErzoFXKk4Na1qa7CKbwvLLBzhtT2oIkFWHNxNowQdjUfW93oWDDOsPJQI3sjscK3+0UWCcFgrxiVY979cN++mzbAt+DSlJ6VzJNLt9A7lzbZwM4PGGs2QPDma9eBCzicll9qfQTTXaV9EP37u2VfGGXZtVXpngyb0F8jRM+e2xhSCEd9zf7rafyE2gkkCD8+0IN7Qh0KudxDoaCAeZBSaAY61kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gM8IO5lcHiiFtd9JYZXBbt5yUS2lUyR0p8wFOj1UCpE=;
 b=W2cv2/sulW/7TQmYJKAOhrYauw/uJxWb5UWd3xdNv9qfPR+jP80G+HCnV9tJlsdoeW1vbqReTk/MifJRlerkmaerN2iBqywiMK4V47+82xeRftplkGgAoUUeLkI780dnjrzY1CrzN5uI1dBtzW7Ha6SttdVXPk5rOVNlDlo30XvExkns/iNqWH9zKYJetOUl3bEScs3lObnz3tQKEySwQHuCzbMJCVXYdbmTitCmbMdLF0eyU/llY7Bq92sM+LpwsTXXtj7FYEwAZj6/mvfyQb7gouHnQlPGgmiKlL8g9032dnPXpY/RKHRmxqA3KVtDyigxJZWwwotrc3Yy9Easqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SA3PR11MB9488.namprd11.prod.outlook.com (2603:10b6:806:465::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.17; Wed, 12 Nov
 2025 17:53:53 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9320.013; Wed, 12 Nov 2025
 17:53:53 +0000
Date: Wed, 12 Nov 2025 19:53:47 +0200
From: Imre Deak <imre.deak@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?iso-8859-1?Q?H=F6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
Subject: Re: [PATCH v4 07/11] drm/i915/xe3p_lpd: Extend Type-C flow for
 static DDI allocation
Message-ID: <aRTJq2h7ic7EcpL6@ideak-desk>
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
 <20251107-xe3p_lpd-basic-enabling-v4-7-ab3367f65f15@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251107-xe3p_lpd-basic-enabling-v4-7-ab3367f65f15@intel.com>
X-ClientProxiedBy: LO2P265CA0017.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:62::29) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SA3PR11MB9488:EE_
X-MS-Office365-Filtering-Correlation-Id: 0e5d9df3-51e1-4f4b-40cd-08de22147194
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?EEKn6PGLnpeuiur/TRWMiMMS3r3c1MfHEXKFzsYYIvnusircVBelf/0qNsjm?=
 =?us-ascii?Q?rYVMHJTH/IbOjGLqPxOIXpDCJCZJBZyDATQi8Pbf37TxCcgzOL5svr5FWszm?=
 =?us-ascii?Q?81WOjB6ViIBoxU7DJw3nKvsDbLcuWIOHqMOeIHjMLJotYK/+ukWbS/rVz9/3?=
 =?us-ascii?Q?rXedqfWhR0bQyUCPU/EIZ15ohey7AiMpjnmGwN/BCNaCUmHagFStjNNvrKIl?=
 =?us-ascii?Q?3nqB/y82pD+hkGZK6aIjrHJj6z1VlU9ynqeGp3EM4cKd2GFshA64IQJVXPDm?=
 =?us-ascii?Q?CQYEDW6XxZtGl8Ape+RL9Sgz5cyFq6ukiTGH3QbZvwpndxUHiyCWjcn+XBKG?=
 =?us-ascii?Q?c18w8C98fE2VwavMcQmX9pCthEZhJ3zVuHij58DPPqaFR8QhQCRU4umAR6Gu?=
 =?us-ascii?Q?Hu8tDo5ygK7PnOLZM+p5Ij8SYI1EADlv8gj/sJqthMDrE/GEVyZ27HH3xrfD?=
 =?us-ascii?Q?2uT3F3rur/rjchRXKrWIAhui6W/A3SMOtABMzTPNkETAb4EcroaD/e1ek59P?=
 =?us-ascii?Q?gOhw8c5jfq5wpJNJk7y/XsVFKBj1R3g38N6CpU2LjOug5zcSRW2ftQhbsgrY?=
 =?us-ascii?Q?IElKTdsZDW/ZC0KYk75X/peqXGUMM8SExASWUidTQhn0BDedXrXZg3M3Yo8A?=
 =?us-ascii?Q?7j95PrAd47VN17q5gT2ui6l6xwL3zh2SjXFEkaKR+p5SLj3MvT+i8AcQwwGR?=
 =?us-ascii?Q?41a0anJhxp5sAUuX/WLCaVm9wYJz5D2VBXd8GGMb5z856dk8uAv4i/aWapA1?=
 =?us-ascii?Q?iEgy9i9byIyB6vvAPSXaC3jFHfjOQY79hZfgeMc0zY28K1nKXSlFzDFp4cDE?=
 =?us-ascii?Q?WYmYnroEKE4OGqzTXTj/ji5hZgzoBAFbQjdpYUIzR2WPeUU48z5BgZXoT0Pb?=
 =?us-ascii?Q?wqoDU8v6cyxe/ez40YDhnnR5yqMO4XVmiiyzdDSF9f4ddxIrqlY9xxneJZiu?=
 =?us-ascii?Q?Bq1slA5Uz2gW7iEiTMqXswiBYPC7+8JByc6jBRN3E5rd3eDE8Bh4LjLECuou?=
 =?us-ascii?Q?CjiqLXqrsZto1GnXEcc0fYCZY5r/ttdGTtq2lkBMk7FttlruekmEBlb8CWNa?=
 =?us-ascii?Q?iTpBoZKg3nFkTa+SAoLvis6OOAPJriXOZ8kV0I8oH/srLQ6QueGoK4lae+7f?=
 =?us-ascii?Q?3Fhhz6IyIUb2SW4RkiTLU9WbgfTx17aKqNo26FdopKKz8j/n+/1m9bDGKeIM?=
 =?us-ascii?Q?eRYmUx0RPGCuRHf/zXPH1JZvo26au82wemrya0Gi1mtJIcfTkviZijnvuXCZ?=
 =?us-ascii?Q?XXHVe3w17Lox/HFjWGx1pGiQUcTHuxrcfemDyTtLoyygYog8GAFVxiQKIaph?=
 =?us-ascii?Q?kvjayvTAOga4c/cWnJ39ZKaiZRJKu8x9YnaYev2MRSv0OQ5FoDypNWmKaiEi?=
 =?us-ascii?Q?v92vLM0w+K1Q7ZXvpaBVRfATEuAKXgr8Z88NwXhozENsH2zBi59DL8rGQ1BI?=
 =?us-ascii?Q?avzqupzjDbvUUSOGVuki5p82uNCL5K+o?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1xis/QmKMPyecLYXRPhOrXz34xVflUt/h8yCgmzkwSOl+GfBwVTqPRvONFYK?=
 =?us-ascii?Q?XE84Ofkfq9uvvplzgOkrFUsrAJL32LSbwIs/2ewtP4Dk9N0xxbf5Vg9+LXqb?=
 =?us-ascii?Q?eEQEl3EhiumhsSpujs767/s7ICnaysyJc27af/Qp1TCIkGsdFHLdMZIvc3f0?=
 =?us-ascii?Q?ZGFNsKJhhpBGJ5CSDoATUKuvxSMAyl0xEpsz2+lq3hXebDyIEjTnQVdtWW8z?=
 =?us-ascii?Q?Noqfr7t1d3DFEN6ln8F/OgTsbBSxsVsibQN8zJvHbcalyTN+uvoE6K1tRtrV?=
 =?us-ascii?Q?rBVREXX88VcAwNrjbjpC5uKK4keUArpRF/jJ2gb9FOv3BVhU67KU3xgFXdMA?=
 =?us-ascii?Q?GrtDNq80pal+DKdN09j67OGlM18NrjHt6f0uhF6SFCLwK1z5Fs6BuQg3RJdb?=
 =?us-ascii?Q?2fD4kQEOUWKnCJksidPLxK1z376ekKoUWFJF8UiIAVasoI7VpBPDqPBSmv0y?=
 =?us-ascii?Q?fWJCtVLM2roFWUsOlN0ENYaZ+rHi2v/jhR/jTEQg5PvVsiXRqRZyV1YhE/rV?=
 =?us-ascii?Q?8gBu6FU6B/up1vzCzSSZ6w0lJD9WqX2Q2cdh1KLaux72+xsoIedpJxbCDn1x?=
 =?us-ascii?Q?xLljEdIVCYvoNvFey1ZCX18xuh4nUDwhCtn3lb1SB9VJFrE7RRWn0ggn5Xwv?=
 =?us-ascii?Q?WocemNDf/kDES7uyyQBKlzGNoVj7kPJIa2cUM1qPnR5dNqr5JIHn5U5r5fzb?=
 =?us-ascii?Q?VIeR5zlWJbI1s79thDP/0TRrbub7zRl/BpbTSRqmhNrmwFh4hTjaBIwAONTy?=
 =?us-ascii?Q?jrZbQh0f7ZOxijSrxwiNFCzn4Nux5/KmOvWBCXUA0p7KvqVfT/RE3QkU/GBO?=
 =?us-ascii?Q?FEkVKp5O8mbVFdNwpoBeg26ueOOgaDJoGNeByIPlXv5OcgsNBwtzXB16eyyd?=
 =?us-ascii?Q?67B1fELMj0mgiIzVDvFAvF1TjFUs0BhLJCsseKGmY5jof8SKjo2kmHEaOUwz?=
 =?us-ascii?Q?FURYemnbrruJXsmtEC10bQgRSXR32ZIfk4IF4LzrdkTdEyDbfvjde5+FChru?=
 =?us-ascii?Q?YXVQegaPeRSufwIWTpRIR9oSNZU8HpjCCkvWrF/xbbCas3Ahu6dvSvsMGGEQ?=
 =?us-ascii?Q?1Y6iyifzANzLetdU2myFbTzWwh15MfWWnM2bnWwzF/9hcWECyavWeh/l5yHA?=
 =?us-ascii?Q?z+tewAb0ZEGvVTo8X9wB0gm4BnXnVpFummZzWqjCdcjvj2RjPMy1RDh1b5We?=
 =?us-ascii?Q?/RylIdNR6LN0ix9BOwH1GpiVNZXSy1l7g4/8AwvtFJMZfQckZ7kyZngw7drN?=
 =?us-ascii?Q?kRIs1URMX6AT9hQs9yD65Ba+bZYSnzeLA4j5JfiwB+dWnrrwWwdq/WRyIrWW?=
 =?us-ascii?Q?tCT1ugIAbWI0X1F3kmxtlQneImuPHkmDT8UV3V6oMQO33olG7BDxt6lQlZUv?=
 =?us-ascii?Q?VupqAefDIhHcYJuIgcEPNrtHTJ99WbmmyqkjF9KShnE8NYqTY2hhUPAo5VXk?=
 =?us-ascii?Q?QuCq1rt6y6u23WgGNfbpQ2FElqQF8LVK4IqQHk6BS4quPVttk1ksLMA3wPjL?=
 =?us-ascii?Q?cljvuA4lrwKVb1Iz7X0Gd7+wXOeQglgX1rMdnqAVxrPuHtYLWvULP12+p5Y1?=
 =?us-ascii?Q?L4RTF5J6bWuem+ykbTTIWy6EClzFqyPEaBOe+IKcVpLmVkcbDNKVOJlAATlZ?=
 =?us-ascii?Q?s3A65gFcPmeWjXGs7jOf7vfrWqbqt1iq5efLxZJlFxsk?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e5d9df3-51e1-4f4b-40cd-08de22147194
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Nov 2025 17:53:53.7312 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eK/oFaDp13TDvnJ1u6olxuYmy929qvuxtUJ+B+VvCplaZ0xka7Ai0rDiw6cnj9StHpenewm1HNI2VEFAXIO+4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB9488
X-OriginatorOrg: intel.com
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 07, 2025 at 09:05:40PM -0300, Gustavo Sousa wrote:
> Xe3p_LPD has a new feature that allows the driver to allocate at runtime
> the DDI (TC ones) port to drive a legacy connection on the Type-C
> subsystem.  This allows better resource utilization, because now there
> is no need to statically reserve ports for legacy connectors on the
> Type-C subsystem.
> 
> That said, our driver is not yet ready for the dynamic allocation.
> Thus, as an incremental step, let's add the logic containing the
> required programming sequence for the allocation, but, instead of
> selecting the first available port, we try so use the 1:1 mapping
> expected by the driver today.
> 
> Bspec: 68954
> Co-developed-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
> 
> NOTE: This patch is still a WIP. There are some opens to resolve here.
> Nevertheless, I'm sending it here for early feedback.
> 
> For the HIP-index stuff, I have a local refactor started and need to
> finish it up and send it.
> 
> The other open is about concurrent calls to iom_dp_resource_lock().  It
> is likely that we need to have a software lock to prevent concurrent
> access to IOM_DP_HW_RESOURCE_SEMAPHORE from our driver.
> ---
>  drivers/gpu/drm/i915/display/intel_display_regs.h |  20 ++-
>  drivers/gpu/drm/i915/display/intel_tc.c           | 151 +++++++++++++++++++++-
>  2 files changed, 169 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 89ea0156ee06..0cf7d43ce210 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -2908,6 +2908,25 @@ enum skl_power_gate {
>  #define   DP_PIN_ASSIGNMENT(idx, x)		((x) << ((idx) * 4))
>  /* See enum intel_tc_pin_assignment for the pin assignment field values. */
>  
> +/*
> + * FIXME: There is also a definition for this register in intel_dkl_phy_regs.h.
> + * We need to consolidate the definitions.
> + */
> +#define HIP_INDEX_REG0				_MMIO(0x1010a0)
> +#define   HIP_168_INDEX_MASK			REG_GENMASK(3, 0)
> +#define   HIP_168_IOM_RES_MGMT			REG_FIELD_PREP(HIP_168_INDEX_MASK, 0x1)
> +
> +#define IOM_DP_HW_RESOURCE_SEMAPHORE		_MMIO(0x168038)
> +#define   IOM_DP_HW_SEMLOCK			REG_BIT(31)
> +#define   IOM_REQUESTOR_ID_MASK			REG_GENMASK(3, 0)
> +#define   IOM_REQUESTOR_ID_DISPLAY_ENGINE	REG_FIELD_PREP(IOM_REQUESTOR_ID_MASK, 0x4)
> +
> +#define IOM_DP_RESOURCE_MNG			_MMIO(0x16802c)
> +#define   IOM_DDI_CONSUMER_SHIFT(tc_port)	((tc_port) * 4)
> +#define   IOM_DDI_CONSUMER_MASK(tc_port)	(0xf << IOM_DDI_CONSUMER_SHIFT(tc_port))
> +#define   IOM_DDI_CONSUMER(tc_port, x)		((x) << IOM_DDI_CONSUMER_SHIFT(tc_port))
> +#define   IOM_DDI_CONSUMER_STATIC_TC(tc_port)	IOM_DDI_CONSUMER(tc_port, 0x8 + (tc_port))

It would be simpler to define the above without the shift, i.e. as 8 +
tc_port.

> +
>  #define _TCSS_DDI_STATUS_1			0x161500
>  #define _TCSS_DDI_STATUS_2			0x161504
>  #define TCSS_DDI_STATUS(tc)			_MMIO(_PICK_EVEN(tc, \
> @@ -2946,5 +2965,4 @@ enum skl_power_gate {
>  #define   MTL_TRDPRE_MASK		REG_GENMASK(7, 0)
>  
>  
> -
>  #endif /* __INTEL_DISPLAY_REGS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index 7e17ca018748..3c333999bbe4 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -9,6 +9,7 @@
>  
>  #include "i915_reg.h"
>  #include "intel_atomic.h"
> +#include "intel_bios.h"
>  #include "intel_cx0_phy_regs.h"
>  #include "intel_ddi.h"
>  #include "intel_de.h"
> @@ -25,6 +26,9 @@
>  #include "intel_modeset_lock.h"
>  #include "intel_tc.h"
>  
> +#define IOM_DP_RES_SEMAPHORE_LOCK_TIMEOUT_US	10
> +#define IOM_DP_RES_SEMAPHORE_RETRY_TIMEOUT_US	10000

The above param names should make it clear how poll_timeout_us() uses
them (i.e. stg like sleep vs. timeout instead of lock_timeout vs.
retry_timeout), but probably even clearer to just drop the defines and
inline the values in the call.

> +
>  enum tc_port_mode {
>  	TC_PORT_DISCONNECTED,
>  	TC_PORT_TBT_ALT,
> @@ -1200,6 +1204,143 @@ static void xelpdp_tc_phy_get_hw_state(struct intel_tc_port *tc)
>  	__tc_cold_unblock(tc, domain, tc_cold_wref);
>  }
>  
> +static void iom_res_mgmt_prepare_reg_access(struct intel_display *display)
> +{
> +	/*
> +	 * IOM resource management registers live in the 2nd 4KB page of IOM
> +	 * address space. So we need to configure HIP_INDEX_REG0 with the
> +	 * correct index.
> +	 *
> +	 * FIXME: We need to have this and dekel PHY implementation using a
> +	 * common abstraction to access registers on the HIP-indexed ranges, and
> +	 * this function would then be dropped.
> +	 */
> +	intel_de_rmw(display, HIP_INDEX_REG0,
> +		     HIP_168_INDEX_MASK, HIP_168_IOM_RES_MGMT);

This matches what intel_dkl_phy.c does, that one also taking the
required lock around the access. At one point the intel_dkl_phy
file/interface could be renamed to intel_tc_reg or similar accordingly.

> +}
> +
> +/*
> + * FIXME: This function also needs to avoid concurrent accesses from the driver
> + * itself, possibly via a software lock.
> + */
> +static int iom_dp_resource_lock(struct intel_tc_port *tc)
> +{
> +	struct intel_display *display = to_intel_display(tc->dig_port);
> +	u32 val = IOM_DP_HW_SEMLOCK | IOM_REQUESTOR_ID_DISPLAY_ENGINE;
> +	int ret;
> +
> +	iom_res_mgmt_prepare_reg_access(display);
> +	ret = poll_timeout_us(intel_de_write(display, IOM_DP_HW_RESOURCE_SEMAPHORE, val),
> +			      (intel_de_read(display, IOM_DP_HW_RESOURCE_SEMAPHORE) & val) == val,

This happens to work, but it's more future proof/bspec conformant to
properly mask the requestor ID field when reading it back.

> +			      IOM_DP_RES_SEMAPHORE_LOCK_TIMEOUT_US,
> +			      IOM_DP_RES_SEMAPHORE_RETRY_TIMEOUT_US, false);
> +
> +	if (ret)
> +		drm_err(display->drm, "Port %s: timeout trying to lock IOM semaphore\n",
> +			tc->port_name);
> +
> +	return ret;
> +}
> +
> +static void iom_dp_resource_unlock(struct intel_tc_port *tc)
> +{
> +	struct intel_display *display = to_intel_display(tc->dig_port);
> +
> +	iom_res_mgmt_prepare_reg_access(display);
> +	intel_de_write(display, IOM_DP_HW_RESOURCE_SEMAPHORE, IOM_REQUESTOR_ID_DISPLAY_ENGINE);
> +}
> +
> +static bool xe3p_tc_iom_allocate_ddi(struct intel_tc_port *tc, bool allocate)
> +{
> +	struct intel_display *display = to_intel_display(tc->dig_port);
> +	struct intel_digital_port *dig_port = tc->dig_port;
> +	enum tc_port tc_port = intel_encoder_to_tc(&dig_port->base);
> +	u32 val;
> +	u32 consumer;
> +	u32 expected_consumer;
> +	bool ret;
> +
> +	if (DISPLAY_VER(display) < 35)
> +		return true;
> +
> +	if (tc->mode != TC_PORT_LEGACY)
> +		return true;
> +
> +	if (!intel_bios_encoder_supports_dyn_port_over_tc(dig_port->base.devdata))

dedicated_external is stored separately in dig_port, why the "related"
dyn_port_over_tc flag isn't?

> +		return true;
> +
> +	if (iom_dp_resource_lock(tc))
> +		return false;
> +
> +	val = intel_de_read(display, IOM_DP_RESOURCE_MNG);
> +
> +	consumer = val & IOM_DDI_CONSUMER_MASK(tc_port);
> +	consumer >>= IOM_DDI_CONSUMER_SHIFT(tc_port);
> +
> +	/*
> +	 * Bspec instructs to select first available DDI, but our driver is not
> +	 * ready for such dynamic allocation yet. For now, we force a "static"
> +	 * allocation: map the physical port (where HPD happens) to the
> +	 * encoder's DDI (logical TC port, represented by tc_port).
> +	 */
> +	expected_consumer = IOM_DDI_CONSUMER_STATIC_TC(tc_port);
> +	expected_consumer >>= IOM_DDI_CONSUMER_SHIFT(tc_port);
> +
> +	if (allocate) {
> +		struct intel_encoder *other_encoder;
> +
> +		/*
> +		 * Check if this encoder's DDI is already allocated for another
> +		 * physical port, which could have happened prior to the driver
> +		 * taking over (e.g. GOP).
> +		 */
> +		for_each_intel_encoder(display->drm, other_encoder) {
> +			enum tc_port other_tc_port = intel_encoder_to_tc(other_encoder);
> +			u32 other_consumer;
> +
> +			if (tc_port == TC_PORT_NONE || other_tc_port == tc_port)
> +				continue;
> +
> +			other_consumer = val & IOM_DDI_CONSUMER_MASK(other_tc_port);
> +			other_consumer >>= IOM_DDI_CONSUMER_SHIFT(other_tc_port);
> +			if (other_consumer == expected_consumer) {
> +				drm_err(display->drm, "Port %s: expected consumer %u already allocated another DDI; IOM_DP_RESOURCE_MNG=0x%08x\n",
> +					tc->port_name, expected_consumer, val);
> +				ret = false;
> +				goto out_resource_unlock;
> +			}
> +		}
> +
> +		if (consumer == 0) {
> +			/* DDI is free to use, let's allocate it. */
> +			val &= ~IOM_DDI_CONSUMER_MASK(tc_port);
> +			val |= IOM_DDI_CONSUMER(tc_port, expected_consumer);
> +			intel_de_write(display, IOM_DP_RESOURCE_MNG, val);
> +			ret = true;
> +		} else if (consumer == expected_consumer) {
> +			/*
> +			 * Nothing to do, as the expected "static" DDI allocation is
> +			 * already in place.
> +			 */
> +			ret = true;
> +		} else {
> +			drm_err(display->drm, "Port %s: DDI already allocated for consumer %u; IOM_DP_RESOURCE_MNG=0x%08x\n",
> +				tc->port_name, consumer, val);
> +			ret = false;
> +		}
> +	} else {
> +		drm_WARN_ON(display->drm, consumer != expected_consumer);
> +		val &= ~IOM_DDI_CONSUMER_MASK(tc_port);
> +		intel_de_write(display, IOM_DP_RESOURCE_MNG, val);
> +		ret = true;
> +	}
> +
> +out_resource_unlock:
> +	iom_dp_resource_unlock(tc);
> +
> +	return ret;
> +}
> +
>  static bool xelpdp_tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
>  {
>  	tc->lock_wakeref = tc_cold_block(tc);
> @@ -1210,9 +1351,12 @@ static bool xelpdp_tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
>  		return true;
>  	}
>  
> -	if (!xelpdp_tc_phy_enable_tcss_power(tc, true))
> +	if (!xe3p_tc_iom_allocate_ddi(tc, true))

This doesn't work. A connector registered to userspace must be always
functional (except for MST connectors which are dynamically registered).
So the DDI allocation and with that connecting the PHY cannot fail here
for a legacy connector/PHY. Instead of this the allocation could be
moved to happen already in intel_tc_phy_ops::init for now, allocating a
DDI for a legacy PHY (intel_tc_port::legacy_port == true) and if that
fails also fail the corresponding connector/encoder registration in
intel_ddi_init(). The DDI would need to be released by
intel_tc_port_cleanup().

>  		goto out_unblock_tccold;
>  
> +	if (!xelpdp_tc_phy_enable_tcss_power(tc, true))
> +		goto out_deallocate_ddi;
> +
>  	xelpdp_tc_phy_take_ownership(tc, true);
>  
>  	read_pin_configuration(tc);
> @@ -1226,6 +1370,9 @@ static bool xelpdp_tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
>  	xelpdp_tc_phy_take_ownership(tc, false);
>  	xelpdp_tc_phy_wait_for_tcss_power(tc, false);
>  
> +out_deallocate_ddi:
> +	xe3p_tc_iom_allocate_ddi(tc, false);
> +
>  out_unblock_tccold:
>  	tc_cold_unblock(tc, fetch_and_zero(&tc->lock_wakeref));
>  
> @@ -1236,6 +1383,8 @@ static void xelpdp_tc_phy_disconnect(struct intel_tc_port *tc)
>  {
>  	switch (tc->mode) {
>  	case TC_PORT_LEGACY:
> +		xe3p_tc_iom_allocate_ddi(tc, false);
> +		fallthrough;
>  	case TC_PORT_DP_ALT:
>  		xelpdp_tc_phy_take_ownership(tc, false);
>  		xelpdp_tc_phy_enable_tcss_power(tc, false);
> 
> -- 
> 2.51.0
> 
