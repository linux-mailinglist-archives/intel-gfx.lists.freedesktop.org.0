Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MC+xHFuh8WlSjAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 08:12:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B49D848FA9C
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 08:12:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BA2710EE6B;
	Wed, 29 Apr 2026 06:12:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fpbkI2+O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4AA110EE6B
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2026 06:12:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777443159; x=1808979159;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=2C0fozElj3zAU2+UqK7gclRYMT0FyRf72V/TyNOlf8g=;
 b=fpbkI2+OLIb4g8JrNwhgYzRkedGm5A84jvNEcLzOEOCRlNmevZa+dTrm
 UG/Mp+YODtIg+DpEW6/fOBApuztkeTcQTVLja5VHkndTQEd2Q52nS6SZc
 zOcKTj7eeBXvbW5e28Zu+SznVM464POlBsuLK1CqdWpdf0A8CDdEDQvzq
 sulGfnLOvPcaYFaAm3gAcTcSlxkkvzlES37+oUh6fp2oPl5GXyD7pTkjo
 pluwcJmjdafX1nMdBH8AosHb6s9m2U0U3WAxroLvUkat6t1L2k5019Htr
 pqRpUYuIzjH1quqnDJ6ikPIpu5jdDwTQmyL03wTHDG61s3/mVBrm0snNA A==;
X-CSE-ConnectionGUID: ex5wDNgRS0a/hih0KdFgkQ==
X-CSE-MsgGUID: CRb2BR1gTiOj3zMBBYvjsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="89454278"
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="89454278"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 23:12:39 -0700
X-CSE-ConnectionGUID: ZdKEs746QKiMErpjyAkNew==
X-CSE-MsgGUID: +U/fAHtbRbyvjpRfhyEh+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="238142366"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 23:12:39 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 23:12:38 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 23:12:38 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.60) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 23:12:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h2cnwCWvUYNERzDV4HBBB5VjUENPJr18OqXjN7SMdp26CjQ3x0/RgLjvK1fJYFgYKt7svGB44HN8m5r+aNmiN6oSDO6SvjwCq59D3gJaG/O1AhCfhjj876U0gTOiK6ZVtQxKn5knMUEX5YbafAPI8UPsR81H/XCn5abWhIynv0n5xlIhrMSGmjM0Gmtbx9HQL8M3LucfktOxCfA1yWxhwUMivDd9MOAfBOi3PkVyGQeeRl9d3iO5VO1dKj/rmPGPtAVjATCB4HdFDxA1Ajzrqk1giF7drfCodyDCuX1iMJwl19DIY9RmuZUq3LRUisOS6bm9stdWFf1CzE16i/jjjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LpWZMwcMV0Hwd85A9WjNK2Ine8CAn6S5CL4YAC+96vg=;
 b=AQd3HE/H4I9lHMpThSmsUYP87vD3vRg+kBviAB0Alfl6xv4AJcTtEOKM9LigdKb/qv1yiOF7vqYuYtX4vaJoM7gVtJmx+T79mrAkgV6++cFlK4fFOyhdVdI6KtZjLfu9xkUP00/LxAeEYc7GHAQVVsugKamDTb08icHt+35KUQzWUJCGfBeTFCgI2/5KRV0kS4tdd9Z6n8I7gtpnl/vyyhhruRQqoTEevn/aUvgvuWVAtjYLM2FdS7DWHxMWxrkQesi2jTcD497br67ccIoMYDCUjOqP3fHspOvand8rjMxFnJuh7GbhRE6OzMPDFIkTznGaJXu5ow5CWFJp7S5HBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SA0PR11MB4687.namprd11.prod.outlook.com (2603:10b6:806:96::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Wed, 29 Apr
 2026 06:12:35 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9870.013; Wed, 29 Apr 2026
 06:12:34 +0000
Date: Wed, 29 Apr 2026 06:12:24 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 <intel-gfx@lists.freedesktop.org>, Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH v7 1/2] drm/i915/selftests: Prevent userspace mapping
 invalidation
Message-ID: <nltmfwj53re3povb7wqzxigw7d6l3f2j6ay4pmfme4cqgustx3@kbiedc7qu2my>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260421061716.3341529-1-krzysztof.karas@intel.com>
 <20260421061716.3341529-2-krzysztof.karas@intel.com>
 <DI1AUT3OG3YM.1KQREBT065NFV@intel.com>
 <59607b4d3aac287185bde19307610455879c8a17.camel@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <59607b4d3aac287185bde19307610455879c8a17.camel@linux.intel.com>
X-ClientProxiedBy: VI1PR07CA0250.eurprd07.prod.outlook.com
 (2603:10a6:803:b4::17) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SA0PR11MB4687:EE_
X-MS-Office365-Filtering-Correlation-Id: 875eb767-354a-4604-ff88-08dea5b64e17
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: 4rpJknzLXkuyIlW/7m98U4ZNRK51lBr4Vu7Y/YkGXbibS89SYjCkp2xyZSj9iWsVaY/nrDlv8xY1FKhPkkq1ofQ5Ok0J2jhqpEM6UAphg3nsY7uPLr5PH0ArBRby+b5npFG2b6YCQFmp739OuGqe+ZTM8sF5a0eV/OdeujWclVbhoP1+xZgds5QeTJlVhQPuqwcRdlicXB+wNDGnVEhzxqmySdfE4TRdEZ7ptmTrA3Am73ItAhTxmEw/n8PCpHOYcZKfrqlBHl2dno7O0yYXaOmDnAHjW30MYjskMvRNtoLh/7kcCcZ2arlkk2z80A/Zqw8Xb7S4h+ZfQNExHRJEcYJc5RTvdxBHJp8LapcSvFSXm/im0MfW1C7rcVm859mcvx3nhgLTFICdUPPACcXZD0VJw8fQZl4WMtoIhYqLPhvYXMWhBaFOobbfn7soLC+nGMG4XbxSJsnJuMFoA1kEOhk87WcWyP0iBvrFYB/9WmhQfO/m36x8dp7GoPWLXciTG84WVuo+aih9+12w/RIv8EGP0o1lzmh3lxD/sW1tPAw89GpelbkMvRLjig519orPvUB47sRgEZKTQSsdF/U84f75eBsoV9syPLD2+BeAUXDgtP/wvSnQnZu5bm97S4DHdufu3TLLP76Vh3KS6vm+zsCtddRXs+Ty3dzN6R1B2IA8pCYalgabFN6gV8+i4jQHALZBvdP8NFWdHo+8UE+jJkgrdVPcZ+KOJpws/oIro4M=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S3IrRzFaYVdJc3lzaFl0NnkwaURNN0FHby8yV3crcnRsQ1NNeUIrcmczY2ti?=
 =?utf-8?B?NXQ2S1JrL3pzb05iMGZWZnhaekI3d1c1Ymw2WUxZSFdrYlFvMVZZeUtEU0lR?=
 =?utf-8?B?QWpGMENVcitheWd6Y2owczFzQmhTY1lSMTZueG1TRkJyYTgyZkE4dWk4NS9W?=
 =?utf-8?B?OTZDaEU0VzU5Tkt5VkZVdWFwb3RXaVhCa2ZweHZrVUtLVGtZMndTRUdjL3dZ?=
 =?utf-8?B?VzQvTFhRMnBWWjBDWWRxeWt5ekxrck1EWnhicnE0NE5zT2pWT29URDFmWGhX?=
 =?utf-8?B?bDFpdDZTTjk3cHRsd3JEN2pEaG9yWFBhN0xFb2U1OThuZ2V0Zms1TG9YZ29o?=
 =?utf-8?B?VnlwN1NZSUhmYzBSWUJpNjQwM1o0RnN5WDBqdGNuK2lxNkZFbHIzZWJRczRx?=
 =?utf-8?B?VW1BVGs4cEdTeTJCZHhJU25wYk44ajhmK0pkeEFWRHRmaVhFTDM3ejJ6OWdQ?=
 =?utf-8?B?cUp2ZDdhTWt1ajZvYmIyVDhzQ2FaQ3hyb0VMNTI2amhFRGpsSHVvU3pUQ2Zr?=
 =?utf-8?B?NHhZaHF0WmRFVTZzbk9DMFMyekJpYWVlNDFvQTdtZE96NTJoRTdnK08xbk9r?=
 =?utf-8?B?MHdiZzVFcHZzbDl4UUYxQk5kVGlmRDQ2bERLWDdXeU9ObzM2ZzdCaXlmbjRp?=
 =?utf-8?B?aUdFVjB0QXF4ZU1qNlVjSWZ3ZFR1QjA0d2xKU2ZpbWhaWS9FNENZU1NNUUsx?=
 =?utf-8?B?U1pNYXdBNWZEc293dzdpOVoyaUhLY3VJUkJMZ21DUkxaaTdSWW1KZUFkQnRn?=
 =?utf-8?B?RlJtNmdTQUlBRy9JS2VGS1VxUGd1MTBmYUdBeGdHMWp5ZCsveXlpRWhrTWY5?=
 =?utf-8?B?VEd2S1ZmMnZuQlVIUlZSa1ErSzFXSVVlV2pLbmYwV3lhZDVnS3ZrdEVNc3BS?=
 =?utf-8?B?UFY2NS9lbEc1NTBsekU0TGJSdUNzTzZialNudWZyWWd1eGJoK0I3NEdwN2FO?=
 =?utf-8?B?cjZpMkFMcmxNR3d2Q0JXWkUzR1pMTUs0VUJHcjltLy9xcWNHNnFJSFo0RjA0?=
 =?utf-8?B?YmN3M0FCcUpQUitMUFVTNytqUVNyU2wzZ2ludXlNcEVVbG90UEFXTDJPYVRl?=
 =?utf-8?B?VWlINGpvTkh3cFFkNVFkbEhJYWRHZmZab210QkR5WktXejM0bVdiVkx1S05X?=
 =?utf-8?B?RUIwS3cwd0U1Wk9RdDAvYUR4dHFReTVLR2ZMOWZ6OTJjUXpiU2gwRE9xTzNK?=
 =?utf-8?B?a2tEM04weXZxMnBlL3F4QXhXd3hIVlcyTmk3bit5WG5qL1JSYlhSS1ZlTHdy?=
 =?utf-8?B?Z2cwTnNEbzBqYWtsYks0ZWpqQ2xVQ0tTUUxndE9Qc0NyRjU1TWgzbGs3Yncw?=
 =?utf-8?B?cEhBYy9oaEJLUzNZZ09yVkxuZFgxdWo1RitiYjFlMUZUMm4rY2dtTmhaZklC?=
 =?utf-8?B?NzBXYnI1MUVYeWRuU3lUL1ByMlUzUWsrQlJzOFRvUUxlM2pPT1QxcXdwa21j?=
 =?utf-8?B?QVZ4UE9MMXpLdUNNQUZUZzc0V0RCTTQ0d0N2Yytwby90ZW1JWFQ5d0h6dCs4?=
 =?utf-8?B?V3RyV2owSXBOQUtPQUduZHZ2WnhGNHBkSHE1bTFsT05ZKyttRXB2YnZhVUdq?=
 =?utf-8?B?dmhYb0RBdklsYzhEY1FKYVdtS1crM09PVEd4WHI0YmlhRlZQM0xGODFRSXNo?=
 =?utf-8?B?SE1QL3Y1cGtmVWYva2EzYlpmUGFxb0w4T0Y2TWJtMGYwTTUzVVExbUpUWTFZ?=
 =?utf-8?B?Y0tDR0NLZFJmVUNHY2xBOUpyb3hXMTUrT3VWTUc4OWxUWXpOQ3VTU0JPbTRh?=
 =?utf-8?B?MjV3SEZJQllVeEE2Y3MvRzNESGdSTzZnSlN1cFZ5QVhJZmdnRy9QOEZaaVZi?=
 =?utf-8?B?L1FhcmtwZXFYcDRFdENGRTBxcWlpU1lwck5IRXRBOHdQdVVobkhnMlhqekFW?=
 =?utf-8?B?blBmK0R3L3hZTFlRdnN0RGpDL1dzcjhTUlQ1aWpDcldJc3g4clF3TWV3SUxr?=
 =?utf-8?B?b3YzMUJTY1VpYUVDVDhrVmlxUm82dHM3eVV1UXkxRjNib1JjaU51dHVzUCta?=
 =?utf-8?B?UDdtb0hTVzY2Qnp2K0drLzVxcEV2Z2pDaE9MWHFPWnorMFgvQ3lFMFlZc0h5?=
 =?utf-8?B?RDAxTjc5SFBKS2k4cjVFdi9yMHExWmlvQ1FkTytDbmtUVndZWWRtUDhxSENx?=
 =?utf-8?B?SWlQNkIvVk5sMndrNFFQQjdGWFVoclMvZXZRQmRxM3VFaWJ1bHdyazZobkNG?=
 =?utf-8?B?aTJpdVJRWjRqN0JlMzVqanVqZlQvTVd0eURtTmNadEFiWG5RbzhiMXJpaUs4?=
 =?utf-8?B?YUNYMEM2S0FoRmkyTy9UZ1QwVGVGLytOZE91dVZxKy8zcFZqR1Bsc1hBaURR?=
 =?utf-8?B?Q2M3Y3o4dkEyMEZvNHowYk45UEdDaWM1Q1FTdVNRWFJ3cXRERlB0Ky9pVU5o?=
 =?utf-8?Q?zP9o54GPDT27lbns=3D?=
X-Exchange-RoutingPolicyChecked: SxAYviDQKHihSzeDuSsNwD+SzMMQuI4aUNRu/juUcFCuSihbrkolaoOBEHSghbISh4Ne68jPQ+8M2y3dpqa1pa8WGsiO4GH57TzetNU/w8AETgHf4KVf92X/AIwJsWXjmMp/4ph7dHq312vguxOii9j7+JZ4xmiUhqLqrIexXS/WZaDPFHWoh5JNmeq8fxR7kFKf/VQLORxElCCtqpIgvORjKE2IozhLyF01rL2vG0hNsbvgJJ0/0iXwN8WlFZBiG4lxeCR9r09FND8J8mXL9e9zC30wgX5Xw+l19KzUbYLydt8f3eL1y4wUE7oqYDerrvIrs6LGLeY+WojgiCP/vw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 875eb767-354a-4604-ff88-08dea5b64e17
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2026 06:12:34.8620 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UmuDANwvR/36M4f2VzzXpTr8HLpWk/Ap2KAYp1/Ovncej9yOaCq4jpOxdh31XWpbH8McpEyGRMy2iiMqT9ftkfF6IvZGJG78dRWyUqUgHXg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4687
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Queue-Id: B49D848FA9C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:janusz.krzysztofik@linux.intel.com,m:sebastian.brzezinka@intel.com,m:andi.shyti@linux.intel.com,m:krzysztof.niemiec@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Hi Janusz,

[...]

> > > +	int u_pid_nr = i915_selftest.userspace_pid;
> > > +	struct mm_struct *mm = NULL;
> > >  	int err = 0;
> > >  
> > >  	while (!i915_selftest.random_seed)
> > > @@ -201,14 +238,32 @@ static int __run_selftests(const char *name,
> > >  	pr_info(DRIVER_NAME ": Performing %s selftests with st_random_seed=0x%x st_timeout=%u\n",
> > >  		name, i915_selftest.random_seed, i915_selftest.timeout_ms);
> > >  
> > > +	/**
> > I’m not entirely sure, but ** might be used for documentation comments.
Hmm, sure, I'll change it to a single asterisk.

> > 
> > > +	 * If we are running in a kthread on a multi NUMA system and the user passed
> > > +	 * a valid PID of a userspace task, then we may borrow its address space
> > > +	 * to prepare a safe environment for the mmap selftests.
> > > +	 */
> > > +	if (!current->mm && u_pid_nr) {
> > > +		mm = get_mm(u_pid_nr);
> > > +		if (mm) {
> > > +			kthread_use_mm(mm);
> > > +			mmput_async(mm);
> > I don’t understand the use of mmput_async here. Why are we calling
> > mmput at this point? You keep using this mm, so the refcount can’t
> > actually drop. I would rather expect a pattern like kthread_unuse_mm
> >  -> mmput_async ...
> 
> Since that approach was suggested by me, let me comment on that. AFAICU, 
> we get a temporary reference to mm with get_mm() in order to call 
> kthread_use_mm(mm) safely.  I expected kthread_use_mm() getting another 
> reference to mm itself, put on _unuse_mm, then our temporary reference no 
> longer needed.
I think Sebastian may be right for two reasons that I overlooked
previously (mainly because I introduced the PID safety net): 
 1) It looks confusing that we put mm and then check if it
exists later.
 2) The original clu of this problem was that mm->mm_users was 0
during the test. Unfortunately, kthread_use_mm() does not
guarantee it being a different value (mmgrab() increases
mm->mm_count, which is irrelevant to releasing mappings form the
perspective of another process using the same mm and calling
mmput() - see mmput() code).

I think I'll lean into my paranoia here and prepare another
version.

-- 
Best Regards,
Krzysztof
