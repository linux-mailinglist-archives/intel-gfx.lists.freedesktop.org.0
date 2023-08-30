Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F5B78D5D7
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 14:19:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82C4110E51E;
	Wed, 30 Aug 2023 12:19:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61EBD10E51E
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 12:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693397944; x=1724933944;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=AQtCi/1W9usZBzfR9saAi4NT9fSx1u1sUDpzGF0QD0U=;
 b=B7tLVIBrfyLO3aXs7NNdim025fbGOh9nBldP0mKl5K++qoW1Jnmh7260
 WSl/zMDYJwtcZZXM/tI2eUz0XpInacbvh1I+/AVJxvUERtQj/qaNrIg3O
 Fnh2cGaRAYrbuGvb1JDyb5yy31Is9/tsM9U5DHGAsWX/w6WrTEPfv9UiF
 wooPv8l8/fJhVkbCvuZ0pKOOW5MDsxjexFA73aqFgo+bnEQEX2MkFTvLX
 L9mfsrHE8c5QIWIm7sQSABZ4hBJ7tFFmq6GrUPUCASnHceGZRY3aCxDvc
 QhMMD2yA+gmKvx6U7pE/rAcp/YAlk+AEm6fRQ64xBg0S2U4Xfl/9L+0b0 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="355938629"
X-IronPort-AV: E=Sophos;i="6.02,213,1688454000"; d="scan'208";a="355938629"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 05:19:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="1069820075"
X-IronPort-AV: E=Sophos;i="6.02,213,1688454000"; d="scan'208";a="1069820075"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 30 Aug 2023 05:19:03 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 30 Aug 2023 05:19:03 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 30 Aug 2023 05:19:02 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 30 Aug 2023 05:19:02 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 30 Aug 2023 05:19:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S4MbCacrr2R/xFhAvNbPa7gsWhk7abgarZHmDqChal8vUelAPSvS2k/ok6a67AcYKAEt1jYSo/iD7YmcJeg4zGa76f7hjdyze34VIIc0NBzm7EuLMa+g3jBOuVE2TF90h9gAdVmfo3Ey0Sf5V39AJrCihfrKPeakKlonwFKd7d/ERrqzJTG3o7wp7RiYMuUdbV5phA5Hgem890OO49uSYHQEf/qlyJhqGi1HkurMCIs+u9E36lfEqzzUQpJz2QiLUnYLyZusjZXn6N35hiQQcaj3TX/aJu1xc4sTVUpv8/GXJXQfQ17VNUcoP48n2HNc6J55ZHwQ205ZCGUA4jpmow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I2CEGZdgqKhZbjzOQTxtVRbuxVhywYoMBYcBzOzoES8=;
 b=eFhe+YW/TisbiOEFwe5p/P7CgAqM9nWPVWyXcTYZcYOKK3HgF+i1f1cnUa8Rti+zXC3j735HHRtT+sBb3VlATArpjMJxFqi91A2huLhw97q6AiZ28rSmoR1ZQrv9F7zJwN4m8dsXtv9DgHzE7OIRnRyH21eGE5nyAfYZQSyNG4bYUxnLeGg0ZYRx0+UNXbi+bkqsFuEuas55t7gPTRY3WMDNAWhKJNtHP1kHLXDso3TRfS9EgbZ0t51Qj0bsgg4Iscp1q3uUo5s04QWTYayLKANsSDTmRmqSn3+00F2VVmGX1CHBqKuzoo3OgrS8/c3iBNyQQw8HAtMWPfqYU11C9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by LV2PR11MB6069.namprd11.prod.outlook.com (2603:10b6:408:17a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.20; Wed, 30 Aug
 2023 12:19:00 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d%7]) with mapi id 15.20.6699.034; Wed, 30 Aug 2023
 12:19:00 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <169330954110.1509.13185236992348154652@gjsousa-mobl2>
References: <20230828173405.59812-1-gustavo.sousa@intel.com>
 <DM4PR11MB597193DFDCC38D7E92C9CFC187E0A@DM4PR11MB5971.namprd11.prod.outlook.com>
 <169325913612.6737.8521384979789302140@gjsousa-mobl2>
 <DM4PR11MB59717445B0CF7E5FD845A24A87E0A@DM4PR11MB5971.namprd11.prod.outlook.com>
 <MW4PR11MB705460D62BA130E4674E5556EFE7A@MW4PR11MB7054.namprd11.prod.outlook.com>
 <169330954110.1509.13185236992348154652@gjsousa-mobl2>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "Sripada, Radhakrishna"
 <radhakrishna.sripada@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Wed, 30 Aug 2023 09:18:56 -0300
Message-ID: <169339793612.10230.4371267089638030780@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR04CA0034.namprd04.prod.outlook.com
 (2603:10b6:a03:40::47) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|LV2PR11MB6069:EE_
X-MS-Office365-Filtering-Correlation-Id: 6bcd7d16-8ef9-48e4-49b6-08dba9534a65
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oRf7kPo8SW0UzYykH0zfICVGUUPqkGpyihDkGOewtB7wCAYGm18UwhxxN6BL+IatDZah/2J/gclrLFdFdgSVsQd553XkfpgEYvBcK4CDKhCQIVCKRuAjCCnZytErfJz5IONc+iKjCRRS7HGPiZdk+KDMHUXWSyrg+tIikRm74LWCZ0nFmqb/eYYKx3rzecg+dtsn2H8cMu/TfEAEancKwWS5KFA6K8K++J5bpC8Vjg4ag5DleeEED0YuY1a0THe9VdqmOmu6m7iMp8sMvJ1LW3UG3Q0M9pDcLApCSTMuF+A4SI/LGSUdUzMCTotClzeZbvw4YGG207HE1F30WaWYd65gl9nF5aHtgFCUcOxYo9T8OfN8yqI3yhYlBA+QoTnrHHISc0bYpkqtMWhj3GMjWs2GHieDi2dA6oIJAS8NqHWChwfOzQOWLHh9rDwi/YQYP9e98+ADAnybK97vNLLuw1a4gRQejZgxtBvOF+F9aqlh2tq1GAHYJKOK909z6nd3sacLVFEOTREMdQsE5IA7eyRHLi3/ItAMAPXpkfnghnYC6Ov45xHWKNuZgBlzXSke
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(376002)(136003)(396003)(366004)(346002)(186009)(451199024)(1800799009)(82960400001)(66556008)(66946007)(66476007)(316002)(110136005)(478600001)(38100700002)(30864003)(2906002)(86362001)(8936002)(41300700001)(5660300002)(44832011)(83380400001)(8676002)(6512007)(9686003)(6486002)(6666004)(6506007)(53546011)(26005)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y1hqaC9LZlVnSFkwYkdTSEtJNTNBOHNaRm42NVRCVit6VFFrNzB3aGpldU4y?=
 =?utf-8?B?UFhRNmlXTEZmK28vVi9zZHhZcVNtVkZoa1VxTjZCOXVzMU5RanpBcm1CMG1S?=
 =?utf-8?B?NlpWTTlGWkZxWDA0c284MUxsWnpsV2RmVllkMXBtVDk5RVRVa1U0OFBlRVJh?=
 =?utf-8?B?VGcvV2gzMDNEN1UwYXJXbnM2TG5iYkU4c0JST3MzTDdzbWtyUnowRnBBditR?=
 =?utf-8?B?SGV1eGg2TTlxdkd5dG9WUkd4UlErU1FjaXBkdUM1dW05ays5ZW5mRDdGU1Rv?=
 =?utf-8?B?a0pDRjVkMVFxZXNmcXMxbXN2RVRiaEJ1REVyNmFqSDlsQW8vU0ViemRJSjVt?=
 =?utf-8?B?Rk1aY21ZbW82WXgwUHIxaGtGYmZpZDdEWkJuRmFuS2hwdjloK3NEY2NjcHRt?=
 =?utf-8?B?STErTjJjOFpqeFpRM2o2L25URVhqYWFKM2NySWVuVUozZWwyM0VKdjBYcW9W?=
 =?utf-8?B?RXc0TzNHYzRlRFlpczhXcklCU2JubFRsUXIzLythNjZGZng2NWZUc0lkYlVj?=
 =?utf-8?B?YVBaUVMzU2JzVmM0WjF1LzJRUk9pU3pPQU5xdEk2UXcwUnNnd0l1cVNIS0Mw?=
 =?utf-8?B?bVNtcWtvZzVSRFc1Rmw2UWtvVEwyTjZHMG9DSFRGU3AvdS9YditacGhFVk1r?=
 =?utf-8?B?a3pRQmNva05zbWlMbEQvTkZHSXlLUG9MbjBNSWI3ayt0YUNDbzU5L2pNSjU2?=
 =?utf-8?B?citTVndRWm5BNXpKcmRsSHdORXFYVDB3elJkNnYwOW5yQldQYjd5Q2YvTlZm?=
 =?utf-8?B?TENzbVZtaGJXelF1b3BSOUZ1ZVZoQWxBb3JwRHpnZWl3bUp1TDFzbG5JRWgx?=
 =?utf-8?B?eGJsK2RVNFZEaVN6QloyMUQwTGVMMDBocnFlSm5vZ0JQaEtTWFp4WmtNQWZD?=
 =?utf-8?B?M2hqR0Vmd1dHSUVLNjJQdVgyQ2tMQUxXQWNaUHNlTjI3ZzZqQW9OSnNXU3hV?=
 =?utf-8?B?bklSeUh1UG41ZENpVElEVCsvRW1Ob2ZreHVOUlhrZnFEMUJVRzRIZ0NyWFRp?=
 =?utf-8?B?RUpVRUdpd1ZhK2dTUG1BeFdCcWU0K0hyanJkSHBrRG83b2pzUnd1b2hpRnpO?=
 =?utf-8?B?dlF6Vkl1ZUpaMjhSMHZWUEdHOGxDV2FRTzdTWWhEcjdVRTRjR0dYR29pSnZu?=
 =?utf-8?B?RERxYWxHaWltbXNQNjhUWEkrcEVDRE1RaFplUXB1blR1U0xucGdNTXJuZ0RO?=
 =?utf-8?B?aHFWVVlKVjhsQjd6Sk83U3hVT1FBalhpcTd1K3lSOEFwakxNN0NrVWxtSWR4?=
 =?utf-8?B?eWlyQlVYZ0JnaC9UdHVDZWVhc2FDYTZUVFB4QVl3elBjV0VVaWk1RCtJMGcw?=
 =?utf-8?B?OHUxNGYzWjJvemxoVlA4a3VQZ0swSU42aWExY2szQ2RCcWFUYldZMnhJUTRL?=
 =?utf-8?B?S1V3OGZJQVFhU2I2NVUza3BqMkxKSFRMSzVVekQweU05dGFzWHkxZzBDMnc3?=
 =?utf-8?B?aFlCNU9QNGZDWDNtalAxVFYxMTNhQStvUTdkTkdFQ0RPTHFweXNpaUdZY24v?=
 =?utf-8?B?azBCcnUyQ3lHS1Z1WjFqOXpYQ1RpMWNEcGhxOFZncnBBZGYrVnNpVDd5NEtY?=
 =?utf-8?B?L2xjZlZ5S2paeHdtZVc0UXRRYjcwcE9JTVRuT0hnUk8rdklMK0R6OHhNWksr?=
 =?utf-8?B?R2RQQndTYWpZU1VGVklTRUdpbHZMVWRWU1kxQUxlU2JRQkMxVFoxeTNvNWhp?=
 =?utf-8?B?bE5wZnZnbVlaSmhlNkRVYnZkTnIwSlEyNVU3L1BTa0dCUzFGbitiUUVqRnJU?=
 =?utf-8?B?NDdLbXRnakpvSFBqS29FZXF6c3pzb3ZFOUNONEJvNHl0NGVxOWlEYmxXcEo2?=
 =?utf-8?B?RmNHL2RrVEpXVjRFaEt1NkhwYngrUjI5M0t1dFF1akVqQlQ1R2I1dmxJQ2V2?=
 =?utf-8?B?UWgxeFl2dDdDL3JaNTBWdk0wYy9OMnBVMGc3MmNtcTN1V25IMEZmSWVNL1lZ?=
 =?utf-8?B?M2tMTDVtMCtuTWI2VHBPRmZKb1JrdUJLaDZDTmt3U0JJNkNzR05NUk5welRr?=
 =?utf-8?B?SmNTb0g2ak1SRUZ1OTVRMlFyWHh1MnBXNWhTbU5SSSsrS1ZHdkh1L0FyM2th?=
 =?utf-8?B?LzZxdFlZZUxRbjl6aDhXNGpJZXFSQitDWVlaOTFGV3lYeVB1NG5jaFNiQWpj?=
 =?utf-8?B?MGhZSEJmaUlDeG1ZWjFDSnpoQXlNdjR5RjhVT2RZY2NlL292RHJ1aGNmMzJC?=
 =?utf-8?B?bGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bcd7d16-8ef9-48e4-49b6-08dba9534a65
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Aug 2023 12:19:00.1547 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xZ1we5lJcSQGPQgIzGoYYH2xg5Z3GYGI8jRrr9qVy/7ua04hO7UjVmOiO39E8u1M9tItXQ5QjpNcW1VLmd0rCg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6069
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/cx0: Check and increase msgbus
 timeout threshold
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

Quoting Gustavo Sousa (2023-08-29 08:45:41-03:00)
>Quoting Kahola, Mika (2023-08-29 06:35:17-03:00)
>>> -----Original Message-----
>>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of =
Sripada, Radhakrishna
>>> Sent: Tuesday, August 29, 2023 1:54 AM
>>> To: Sousa, Gustavo <gustavo.sousa@intel.com>; intel-gfx@lists.freedeskt=
op.org
>>> Subject: Re: [Intel-gfx] [PATCH] drm/i915/cx0: Check and increase msgbu=
s timeout threshold
>>>=20
>>> Hi Gustavo,
>>>=20
>>> > -----Original Message-----
>>> > From: Sousa, Gustavo <gustavo.sousa@intel.com>
>>> > Sent: Monday, August 28, 2023 2:46 PM
>>> > To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>; intel-
>>> > gfx@lists.freedesktop.org
>>> > Subject: RE: [Intel-gfx] [PATCH] drm/i915/cx0: Check and increase
>>> > msgbus timeout threshold
>>> >
>>> > Quoting Sripada, Radhakrishna (2023-08-28 17:30:19-03:00)
>>> > >Hi Gustavo,
>>> >
>>> > Hi, RK.
>>> >
>>> > Thanks for the feedback! Please, see my replies below.
>>> >
>>> > >
>>> > >> -----Original Message-----
>>> > >> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behal=
f
>>> > >> Of
>>> > Gustavo
>>> > >> Sousa
>>> > >> Sent: Monday, August 28, 2023 10:34 AM
>>> > >> To: intel-gfx@lists.freedesktop.org
>>> > >> Subject: [Intel-gfx] [PATCH] drm/i915/cx0: Check and increase
>>> > >> msgbus
>>> > timeout
>>> > >> threshold
>>> > >>
>>> > >> We have experienced timeout issues when accessing C20 SRAM registe=
rs.
>>> > >This wording is misleading. It seems to imply that we directly acces=
s
>>> > >SRAM registers via msg bus but the reads/writes go through
>>> > >intermediate registers and it is this read/write that is failing. Ad=
ding extra clarity here would be helpful.
>>> >
>>> > Hm... Okay. I thought that would already be implied to someone
>>> > familiar with the code. What about:
>>> >
>>> >     s/when accessing/when going through the sequence to access/
>>> This is better to indicate that it is not direct access.
>>>=20
>>> >
>>> > ?
>>> >
>>> > >
>>> > >> Experimentation showed that bumping the message bus timer threshol=
d
>>> > >> helped on getting display Type-C connection on the C20 PHY to work=
.
>>> > >>
>>> > >> While the timeout is still under investigation with the HW team,
>>> > >> having logic to allow forward progress (with the proper warnings) =
seems useful.
>>> > >> Thus, let's bump the threshold when a timeout is detected.
>>> > >>
>>> > >> The maximum value of 0x200 pclk cycles was somewhat arbitrary - 2x
>>> > >> the default value. That value was successfully tested on real
>>> > >> hardware that was displaying timeouts otherwise.
>>> > >>
>>> > >> BSpec: 65156
>>> > >> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>> > >> ---
>>> > >>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 41
>>> > >> +++++++++++++++++++  .../gpu/drm/i915/display/intel_cx0_phy_regs.h
>>> > >> | 12 ++++++
>>> > >>  2 files changed, 53 insertions(+)
>>> > >>
>>> > >> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>>> > >> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>>> > >> index dd489b50ad60..55d2333032e3 100644
>>> > >> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>>> > >> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>>> > >> @@ -5,6 +5,7 @@
>>> > >>
>>> > >>  #include <linux/log2.h>
>>> > >>  #include <linux/math64.h>
>>> > >> +#include <linux/minmax.h>
>>> > >>  #include "i915_reg.h"
>>> > >>  #include "intel_cx0_phy.h"
>>> > >>  #include "intel_cx0_phy_regs.h"
>>> > >> @@ -29,6 +30,8 @@
>>> > >>  #define INTEL_CX0_LANE1                BIT(1)
>>> > >>  #define INTEL_CX0_BOTH_LANES        (INTEL_CX0_LANE1 |
>>> > >> INTEL_CX0_LANE0)
>>> > >>
>>> > >> +#define INTEL_CX0_MSGBUS_TIMER_VAL_MAX        0x200
>>> > >> +
>>> > >>  bool intel_is_c10phy(struct drm_i915_private *i915, enum phy phy)
>>> > >> {
>>> > >>          if (DISPLAY_VER_FULL(i915) =3D=3D IP_VER(14, 0) && phy <
>>> > >> PHY_C) @@ -119,6 +122,43 @@ static void intel_cx0_bus_reset(struct
>>> > drm_i915_private
>>> > >> *i915, enum port port, i
>>> > >>          intel_clear_response_ready_flag(i915, port, lane);  }
>>> > >>
>>> > >> +/*
>>> > >> + * Check if there was a timeout detected by the hardware in the
>>> > >> +message bus
>>> > >> + * and bump the threshold if so.
>>
>>Just a thought but wouldn't it be simpler if we just set the timeout to i=
t's maximum and discard the check here?
>
>I'm not sure which exactly check you are talking about here:
>
>  1) The check on the XELPDP_PORT_MSGBUS_TIMER_TIMED_OUT.
>
>     I think this could give us useful debugging info, for example, if our=
 code
>     thinks the message bus timed out while the bus hardware did not say s=
o. I
>     would prefer to keep this one, if you are okay with it.
>
>  2) The check on the current value of the threshold and the exponential
>     increase up to the maximum.
>
>     I would agree that I did a bit of over-engineering here. I guess I co=
uld
>     simply to a rmw using INTEL_CX0_MSGBUS_TIMER_VAL_MAX directly as you
>     suggested; and maybe rename INTEL_CX0_MSGBUS_TIMER_VAL_MAX to
>     INTEL_CX0_MSGBUS_TIMER_BUMPED_VAL, just not to give the impression th=
at
>     0x200 is the maximum accepted by the hardware.
>
>What do you think?

I've sent a v2 addressing (2).

--
Gustavo Sousa

>
>--
>Gustavo Sousa
>
>>
>>-Mika-=20
>>
>>> > >> + */
>>> > >> +static void intel_cx0_bus_check_and_bump_timer(struct
>>> > >> +drm_i915_private
>>> > >> *i915,
>>> > >> +                                               enum port port, in=
t
>>> > >> +lane) {
>>> > >> +        enum phy phy =3D intel_port_to_phy(i915, port);
>>> > >> +        i915_reg_t reg;
>>> > >> +        u32 val;
>>> > >> +        u32 timer_val;
>>> > >> +
>>> > >> +        reg =3D XELPDP_PORT_MSGBUS_TIMER(port, lane);
>>> > >> +        val =3D intel_de_read(i915, reg);
>>> > >> +
>>> > >> +        if (!(val & XELPDP_PORT_MSGBUS_TIMER_TIMED_OUT)) {
>>> > >> +                drm_warn(&i915->drm,
>>> > >> +                         "PHY %c lane %d: hardware did not detect
>>> > >> + a
>>> > >> timeout\n",
>>> > >> +                         phy_name(phy), lane);
>>> > >> +                return;
>>> > >> +        }
>>> > >> +
>>> > >> +        timer_val =3D
>>> > >> REG_FIELD_GET(XELPDP_PORT_MSGBUS_TIMER_VAL_MASK, val);
>>> > >> +
>>> > >> +        if (timer_val =3D=3D INTEL_CX0_MSGBUS_TIMER_VAL_MAX)
>>> > >> +                return;
>>> > >> +
>>> > >> +        timer_val =3D min(2 * timer_val,
>>> > >> (u32)INTEL_CX0_MSGBUS_TIMER_VAL_MAX);
>>> > >     ^ is this cast necessary?
>>> >
>>> > Yes. I remember getting a warning without it. Let me remove it to rem=
ember...
>>> Got it thanks for the quick check.
>>>=20
>>> >
>>> > ...done! I think it complains because the arguments are of different =
types:
>>> >
>>> >     In file included from drivers/gpu/drm/i915/display/intel_cx0_phy.=
c:8:
>>> >     drivers/gpu/drm/i915/display/intel_cx0_phy.c: In function
>>> > =E2=80=98intel_cx0_bus_check_and_bump_timer=E2=80=99:
>>> >     ./include/linux/minmax.h:20:35: error: comparison of distinct
>>> > pointer types lacks a cast [-Werror]
>>> >        20 |         (!!(sizeof((typeof(x) *)1 =3D=3D (typeof(y) *)1))=
)
>>> >           |                                   ^~
>>> >     ./include/linux/minmax.h:26:18: note: in expansion of macro =E2=
=80=98__typecheck=E2=80=99
>>> >        26 |                 (__typecheck(x, y) && __no_side_effects(x=
, y))
>>> >           |                  ^~~~~~~~~~~
>>> >     ./include/linux/minmax.h:36:31: note: in expansion of macro =E2=
=80=98__safe_cmp=E2=80=99
>>> >        36 |         __builtin_choose_expr(__safe_cmp(x, y), \
>>> >           |                               ^~~~~~~~~~
>>> >     ./include/linux/minmax.h:67:25: note: in expansion of macro =E2=
=80=98__careful_cmp=E2=80=99
>>> >        67 | #define min(x, y)       __careful_cmp(x, y, <)
>>> >           |                         ^~~~~~~~~~~~~
>>> >     drivers/gpu/drm/i915/display/intel_cx0_phy.c:152:21: note: in
>>> > expansion of macro =E2=80=98min=E2=80=99
>>> >       152 |         timer_val =3D min(2 * timer_val,
>>> > INTEL_CX0_MSGBUS_TIMER_VAL_MAX);
>>> >           |
>>> >
>>> > >
>>> > >> +        val &=3D ~XELPDP_PORT_MSGBUS_TIMER_VAL_MASK;
>>> > >> +        val |=3D REG_FIELD_PREP(XELPDP_PORT_MSGBUS_TIMER_VAL_MASK=
,
>>> > >> timer_val);
>>> > >We do not use REG_FIELD_PREP in the function. Instead we use it in
>>> > >register definition in intel_cx0_phy_regs.h.
>>> >
>>> > I think it makes sense have definitions using REG_FIELD_PREP() in
>>> > header files and use those definitions in .c files for fields whose
>>> > values are are enumerated.
>>> >
>>> > Now, for fields without enumeration, like this one in discussion, I
>>> > think it is fine to use REG_FIELD_PREP() directly. The MASK is alread=
y exposed anyway...
>>> >
>>> > Besides, it seems we already have lines of code in *.c files using th=
e
>>> > pattern
>>> > above:
>>> >
>>> >     git grep REG_FIELD_PREP drm-tip/drm-tip -- ':/drivers/gpu/drm/i91=
5/**/*.c'
>>> >
>>> > Let me know what you think. I could add a
>>> > XELPDP_PORT_MSGBUS_TIMER_VAL() macro if you think it is necessary. My
>>> > personal take is that using REG_FIELD_PREP() for this case is fine.
>>> Let us conform with the norms for the macro-fields used in this file in=
stead of starting a new pattern.
>>>=20
>>> --Radhakrishna(RK) Sripada
>>> >
>>> > --
>>> > Gustavo Sousa
>>> >
>>> > >
>>> > >Thanks,
>>> > >Radhakrishna Sripada
>>> > >
>>> > >> +
>>> > >> +        drm_dbg_kms(&i915->drm,
>>> > >> +                    "PHY %c lane %d: increasing msgbus timer
>>> > >> + threshold to
>>> > >> %#x\n",
>>> > >> +                    phy_name(phy), lane, timer_val);
>>> > >> +        intel_de_write(i915, reg, val); }
>>> > >> +
>>> > >>  static int intel_cx0_wait_for_ack(struct drm_i915_private *i915,
>>> > >> enum port
>>> > port,
>>> > >>                                    int command, int lane, u32 *val=
)
>>> > >> { @@ -132,6 +172,7 @@ static int intel_cx0_wait_for_ack(struct
>>> > >> drm_i915_private *i915, enum port port,
>>> > >>
>>> > >> XELPDP_MSGBUS_TIMEOUT_SLOW,
>>> > >> val)) {
>>> > >>                  drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting
>>> > >> for message ACK. Status: 0x%x\n",
>>> > >>                              phy_name(phy), *val);
>>> > >> +                intel_cx0_bus_check_and_bump_timer(i915, port,
>>> > >> + lane);
>>> > >>                  intel_cx0_bus_reset(i915, port, lane);
>>> > >>                  return -ETIMEDOUT;
>>> > >>          }
>>> > >> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>>> > >> b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>>> > >> index cb5d1be2ba19..17cc3385aabb 100644
>>> > >> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>>> > >> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>>> > >> @@ -110,6 +110,18 @@
>>> > >>  #define   CX0_P4PG_STATE_DISABLE                        0xC
>>> > >>  #define   CX0_P2_STATE_RESET                                0x2
>>> > >>
>>> > >> +#define _XELPDP_PORT_MSGBUS_TIMER_LN0_A
>>> > >>         0x640d8
>>> > >> +#define _XELPDP_PORT_MSGBUS_TIMER_LN0_B
>>> > >>         0x641d8
>>> > >> +#define _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC1                0x16f2=
58
>>> > >> +#define _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC2                0x16f4=
58
>>> > >> +#define XELPDP_PORT_MSGBUS_TIMER(port, lane)
>>> > >>         _MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
>>> > >> +
>>> > >>          _XELPDP_PORT_MSGBUS_TIMER_LN0_A, \
>>> > >> +
>>> > >>          _XELPDP_PORT_MSGBUS_TIMER_LN0_B, \
>>> > >> +
>>> > >>          _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC1, \
>>> > >> +
>>> > >>          _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC2) + (lane) * 4)
>>> > >> +#define   XELPDP_PORT_MSGBUS_TIMER_TIMED_OUT                REG_B=
IT(31)
>>> > >> +#define   XELPDP_PORT_MSGBUS_TIMER_VAL_MASK
>>> > >>         REG_GENMASK(23, 0)
>>> > >> +
>>> > >>  #define _XELPDP_PORT_CLOCK_CTL_A                        0x640E0
>>> > >>  #define _XELPDP_PORT_CLOCK_CTL_B                        0x641E0
>>> > >>  #define _XELPDP_PORT_CLOCK_CTL_USBC1                        0x16F=
260
>>> > >> --
>>> > >> 2.41.0
>>> > >
