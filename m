Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E976DF527
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Apr 2023 14:27:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0413010E7AE;
	Wed, 12 Apr 2023 12:27:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D279710E7AE
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Apr 2023 12:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681302426; x=1712838426;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=sjcZrI7gj6Jueu2koJs1uIiv/NsW23K00lEnKWWC/NA=;
 b=H1azA9Er7M1KjyRZGDEVwcRkG04t4VCmqY3Kakrs/i19pNO9LKytngVD
 YDMqd3jZsI6RheySe392ukjHHB7JJpBXxnF5W4icqkTXzCLTeYTUjKXjB
 1IXTt6LC2EP4csMLyjCL7p57nl005N9lCpuAcs+A37ELS6yGTatyU/jMq
 A1D7/YN0jRAaVZCbWjfqzvoqHGF1I6A55mX9vcqq3JkBlqSG/CP6FWFwg
 s83TwGE/oDkQRFbEKSzMBjMlyxhYuPadNe6h5fn/VpI0JXIVqo7rK+c4a
 L4YADyyj0skbXkjEtcZEzJDMs/R4XEc/Kxo08wA/cMF4kuU12i/ViKbkl Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="409017134"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="409017134"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 05:27:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="863278840"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="863278840"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 12 Apr 2023 05:27:05 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 12 Apr 2023 05:27:05 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 12 Apr 2023 05:27:05 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 12 Apr 2023 05:27:05 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 12 Apr 2023 05:27:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X/447t0Pm99ki3v5hYcir4PlnAgDtSZH9VsLCqPUpQE1cs6UOnJrwnqICbMV99HE2mmKqbFZ7V96Gg0zEGVKViIWlA3iEy/Lc49tDpbv1aB/COVTBcFolpI/8EtMaKBsqH5MvD/N1dNkbohw262GJUA08YdH6wfX6PAG/nvDYNVM4X9vWvcBfJ2NObWJk063o54ne160oMSnqw5PhRME2z+/VVSmyfXIXQBqsnzj1DFtPBBlG7NzLDBlL2WL+K5r8kiLcJKI5nldG8xfKu27YosYI1sFeFiMUqv5re/kWWvAFF771sHc9bdTM27xNra0uiyqxfYJ8rfrOy5A5K+M/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=prYNZ4+7Gq86TkkN83aeBMx3eoIYpgLwKqieqzxna7E=;
 b=PxEGivnhn5OVQ72Mib3yRvD4GDEUM6LjuHf4q31cEx4oNgGSIMSvYTatELu9HXOFrAoWnVUXUvI6ZMbb95WOHkAdotu5Eq6N71NCCOfoOHDQPjYPr6XKvzfdWen+1X5WYiHr1JXpaDDKUg1I/hr9Tb2+F9PuW4pHwQCp8jKOcJPbbRwSL4QJkH1UvSP8CfMw7ysq1UCQ57UG2B4J8q/AyvZYPZ+snvkyuE4d3bdZj5t4hYGdkpo4YcPlDAYMJEy1roXWSlgemqCEwyYu18tTXsVZGD5SqN3xEL5SkBg5TxT+9wCBX4ZvAXEUgKbTdrnMWSR6cpfgVrWU68SsxtYfgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by PH0PR11MB7709.namprd11.prod.outlook.com (2603:10b6:510:296::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Wed, 12 Apr
 2023 12:27:03 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::9e31:fa24:17e3:a69a]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::9e31:fa24:17e3:a69a%3]) with mapi id 15.20.6277.035; Wed, 12 Apr 2023
 12:27:03 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <87o7ntcum5.fsf@intel.com>
References: <20230403085043.2219092-1-mika.kahola@intel.com>
 <168125326577.3326.16288863179121640086@gjsousa-mobl2>
 <87o7ntcum5.fsf@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Mika Kahola
 <mika.kahola@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Wed, 12 Apr 2023 09:26:55 -0300
Message-ID: <168130241568.5121.2708879208728811060@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR02CA0018.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::31) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|PH0PR11MB7709:EE_
X-MS-Office365-Filtering-Correlation-Id: 57ca1198-9c9b-4368-a49c-08db3b5137c7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mXdXnFl26Ensf7ZwFIjCbvFfXKT5CZsP+28HHyfuCpZoNowaQKeSYSDs8YsWM/ZdRKXC+4p5+KaSI4He94Ex9wwxunHUFsbfleI3mDzWsyT3QZV6Iaihu/m4Jt8x/ouUOY8D8Y9rQ7Nu3T9TmziRnNQOS9DIU0C56ij6t1nKTaPiL5kwabBjTmhIJKeIsL0kFePKkdjKwgFdjXSnsRY2+UEW5wHeziyl07fEFAacfnzuFdUfcrl3fB9hmZpjQSPfdPvye7hfAya+KihJg67KU3GF3RVvOfVApmi55qs7/ezQy/7K7o1g1LXiWbob7+BZ/Mn5d0w/Gj/nrLJeBQOjse0YPCBkF0PH2EPmdQmUiqjsOIly/Qw4CqrrmgxG4/KIRUc3Ia90Sb/5FTwBNsLo1xNfhUk1+I8WC6O4HhxAdExM5flNc1cG+zspb3DU2HPji6veD611KarNkTo0ryFHnsXUTegcNxei0SDUscMh43w+NYOHZkj/P/UaKPHfNhGRQicnseo6rgqTa51ibCr4ZtQJ065rN4gQZbqYqhhCDVcP1bfK1XAttPS217m09ju/
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(376002)(136003)(396003)(346002)(39860400002)(366004)(451199021)(54906003)(6486002)(6666004)(478600001)(186003)(26005)(110136005)(6506007)(6512007)(33716001)(9686003)(4326008)(44832011)(38100700002)(2906002)(5660300002)(66476007)(82960400001)(41300700001)(66556008)(66946007)(8676002)(8936002)(316002)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MzVPYnFRNHVHbWxQUnBUQmorbUlKdzRXQXlWY3liU1hXekVKMDQ1c2FJeE5Y?=
 =?utf-8?B?RCtnTzNEQlBBOGVmRDZzcUNZUEd2K1R3OUZiUktrMTB6MlJjaEFWTno3cTVo?=
 =?utf-8?B?djF0YnlWMEw5bTRuak5HUFd1VEF0WVJ0SnpDUDVpUGptaWtQd3g2NERFTjZZ?=
 =?utf-8?B?WVNhU2Y0VkRYL1dueEZyd0Z3V2poelZCcjlxdmlSOGRXRUNZVVl2UnlreUNL?=
 =?utf-8?B?TDlMakF5WkFVbFdsVnN5dEhDaS9MOUp5N3hQMFVRdXhyd1EvTEpYM2tBNXZ6?=
 =?utf-8?B?dlRzcGhJQi91c2tTM1Rhb2l1M2NLaThmMzFOZWt3a3RXM1B5YlJvM3NVMEhq?=
 =?utf-8?B?MEpSR3NCY095V3Z1anZjVWFiVzE1S0ZrQW1ZK1VRVWpKNlRVSDhSc0RIVmRF?=
 =?utf-8?B?MXNtcWVZemU1KzB1MW1ZbktsMENQb1VER012K3FVRkJRSzIyYzlRam5MZFEz?=
 =?utf-8?B?WTF6MDQwZ0pLMHhnOGVMaU5aSTBYNFV1OFUrT0FhcE1qWE5wSVpobzVKdGk3?=
 =?utf-8?B?OGJ3U2FHOHJYSlZtRFY2YWRpUld2VkQ3RW11WEFnNVVpeTUraG9Oa2libU1r?=
 =?utf-8?B?TjRzRkRGQTFSUU5DRUovRGJ4Z1lkZlZxREE2QURWNG5sQTE4ZUMzSldQYk85?=
 =?utf-8?B?YzhqSlNoMlc2anhQbGVHU1BId2xRdFBqWWdBTUw0UDkwUHEyOE5rcWF2dWVz?=
 =?utf-8?B?d2xIM21UT0dtTTRJS0NUd1JpamFzQW9sTVBBalc4bThVbDljYzlicUFubkVO?=
 =?utf-8?B?L1pMQnhoMzRjWXFLVTVmcW9IdXd2bTBCNWpDSmYyRyt0VElZSEJQNXZiNEhO?=
 =?utf-8?B?Y1pNSERRdWRiMGoyRUJPUjRGNjhkVGtLYW5SMWc0UXRZdlVqOHR6VHVJK0U4?=
 =?utf-8?B?NWNoTER2cXlaaUF4bEtENTJmUWZ1U3NWbDNNWFJSbTIxdEVDa0Z6azBqNFJp?=
 =?utf-8?B?NDdha2ZjSVZKQ2wwME1PNU5pb2F3c2pXZTlmekExNS9MWVhGRVc1UmV0S3By?=
 =?utf-8?B?cUk0NEZEdHlkTlpMUmNERkJpeDJjQWtqRTVUNExkaFI0eEMyZEcvMFNXOFNr?=
 =?utf-8?B?TkFoaUF2T2x1d3prNkp3MWVNU2t4SWVOUjRoWE5JTjdOdS81L2pna3dZbWFx?=
 =?utf-8?B?c0hKd01nWG9QaWtxM0hXMU5aemxZWEtiU0d1ZE5tb3F1ZElpWWNHOXRFandl?=
 =?utf-8?B?RDRGTjZDSDdBUTYxTnlsTFIrOHVaVnNPSU0zbjJwa3ZubjZLZ096RCtnb2Rn?=
 =?utf-8?B?TnRxRkRpR2w3WFVOcm53Ky9OczVYSkxpRFFHaWJEblhTWHljTzRuUXBneXdh?=
 =?utf-8?B?dWtrTGF6T1hvOFhaeXFrSkFPbjE4Q0NLSmtKT3JRdExFQm1SSzBsektOYklO?=
 =?utf-8?B?MmFuNEpZNUJRZWRVdHgxWGg5NXJqQ0JMQWtHVk5ocmlNMWNuNDVrRFFkSUND?=
 =?utf-8?B?YTVjQzFWK215R1NJRG43aUNMdFJONlpUcmhyb3VQR3VPT0p2Q1E2Vjl5MU4x?=
 =?utf-8?B?VzhRUS9uRDJkQ2ZtY3BsSXRLZ0ZRRFBuNkxzd2hWbzBYV3A3NmdtWUpRbWpY?=
 =?utf-8?B?WVJBdXlQdU1rWDZPYm8xYUxuNGRCOEl2MmpyejFicDRON2JGaFA3alpiWURJ?=
 =?utf-8?B?aDAwcXJuZ3RjVWFwMk9IVmZEK1ZyaWhDUkNFMmJzRUpGaTdLcXNZdjN4OERl?=
 =?utf-8?B?Ym04andUdFBCR2hlNmUzZ0c5Y1dyU2ErTEJtREV4WFI4b0tmSURxcVFSWDcy?=
 =?utf-8?B?eUgxeHo1K0t4ODZvQkpJcDlKUlFBS2hTNTVYQ0lPSTZrWGJoVEJIQW5UQTlN?=
 =?utf-8?B?QlpwV3JpWWhXelZob1FhVTlzNDN2eFN5czcrZ0ZWcDl3eWdLVzJWd2ZxQ3ZK?=
 =?utf-8?B?dVk1bElzaUcxVkhCc1R2NEtRTTJ6YS93OHJKRlNvNVJGbkE2SWdBU2NLem5a?=
 =?utf-8?B?c2ltWEhtNUlIOFpyTGVqc3FlK3dkSXNIczBSY2tXK2xrUHlsbjR6Z0R6dmlN?=
 =?utf-8?B?L1J1MmZ0QmtLSzFMN0hPbENhTmtJMTNTMWJ2c3NqT1hMcVcrMXpUUGlJdjlG?=
 =?utf-8?B?S29tNW5GdjJTZGhROVY2eHBNeUhnaXBkaWF5YWxGZE5uQWMxT3RnbEhsZXBK?=
 =?utf-8?B?cXFmZG9TcFBBZStDMFF1bjB5cTBwa0o2Q3hqVFZpbWRxU2tZaERVVzltSDJx?=
 =?utf-8?B?R0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 57ca1198-9c9b-4368-a49c-08db3b5137c7
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2023 12:27:02.1110 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TW6Leg7nJ9rIE5r5ObZ4m5LspGV+X/gNpe/kKoY00kybZO5ToRx1XowUyF4j/P4WVdE+zjJIVx8S8qs8RBaXOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7709
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Add support for PM DEMAND
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
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2023-04-12 06:33:54)
> On Tue, 11 Apr 2023, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> > Quoting Mika Kahola (2023-04-03 05:50:43)
> >> @@ -8250,6 +8259,7 @@ void intel_init_display_hooks(struct drm_i915_pr=
ivate *dev_priv)
> >>         intel_color_init_hooks(dev_priv);
> >>         intel_init_cdclk_hooks(dev_priv);
> >>         intel_audio_hooks_init(dev_priv);
> >> +  intel_init_pmdemand(dev_priv);
> >
> > I think intel_init_display_hooks() is meant to call functions setting u=
p
> > function pointers, right? That would not be the case for intel_init_pmd=
emand().
> >
> > I think we could rename intel_init_pmdemand() to
> > intel_pmdemand_init_early() and call it inside i915_driver_early_probe(=
).
>=20
> Please let's not add new direct calls to display from top level driver
> code. See also [1].

Okay. What would be the suggested place to do this SW-only initialization?

Should we just merge the two init functions into one named intel_pmdemand_i=
nit()
and call the new function under intel_modeset_init_noirq()?

--
Gustavo Sousa
