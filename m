Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC8378C38D
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Aug 2023 13:45:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D31410E2FE;
	Tue, 29 Aug 2023 11:45:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CD1B10E2FE
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Aug 2023 11:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693309550; x=1724845550;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=jCzPJvWgrl13RN3vWTBN2reYPpMOdT5dVENKBIunn4I=;
 b=dP/9cXYfRJtw6vj+QMwrjm5v6mIqcnSOZIL6nWX6+rP4cH17bD/kofuR
 zwtI8Nas5J218zOD/wmWVZpmQxrNA5eQnnqE6QH9RXGd/IdY9HRoun0iz
 tXEacyM7FzU6U1vE2lx7Osf3WfX/nhyXmyv7F6FX5F0bBPR4v5a0mOuxC
 pZFVtiqDfZ8QvWGGcsfIUIkID3nYoND2saC65DA97cDZ5UpDPvGPEkc3U
 qlLGYa8bAkcGYK69gV1YU81gYRqT3dHSfC7V+DHXLYX+f/dUupepdogRp
 h0EcVLsssLGG5u72X9H6ajOzsK3nbsC4nrMSepAlqYIutmPVXgGiwZlFr A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="461708055"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="461708055"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 04:45:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="912394327"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="912394327"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 29 Aug 2023 04:45:49 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 29 Aug 2023 04:45:49 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 29 Aug 2023 04:45:49 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 29 Aug 2023 04:45:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fIZrz2+/0eEHhaBGcZgEgYuckH6s/Dv1xhIA7mAXXmfJWu6eKHu0Sz3K0LMdNSDAS0n774tVoz0LLZQsNrkkEKfpD1xTdJe1zAV4JWPtmdJ84AayElKpy/08IRf6h0fVFeo8cN9viugdyWAnKxvrdxdwNEq+9GA0nq8leuF2DtF37C91UEEFFkrth1Uo6mErh8G7ssKMoUZyvNKb6J6D+jqXd0HbYBHe7LfGliyXUh3MbRVD7Sbj0F/ph+6wP3i+/RtmSc0oqfRhTp9DVoOonQN+zmFMVMoaN2rsKvKY9pg66QeMCB1kzmv4N8Sn0lVifnBNUYc7pKPPbFUBbeFVfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8vOEkAvyMOxL5Vkh1l/eUbpxU04Gf2vgWJsEF0GLllE=;
 b=nGkJbFVbu5DfwVhkvBV4EzWD8vgYgiFsufnjyph7F2pV85wv5UMzAVdbN61T9EIWhV5YKtaQPbTWdnjr1BHoJRBM6SSfrAxTL+yDZXmmmkIAU/0cclzQRJrqbtoJ1beZ5z49c6xnN704KKvneYlfOvmtm5+E78W9iOFqx+pF9hAs8S5WK/da9lYEMftcoJk4uNgFeMORfcOw+E8Nx2YKaKLI2P74uwSt7B6M+EfeHYyJCEc8cslYRVOWh3O7pXC35QUZPIn/luhqyU4reOzMg9hiHqmUOsqbXGi1+FWUwf/dVx9F70l91ocSqmCcVA5EL0Eu6GobMorm+JNO5w+lAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by DM8PR11MB5608.namprd11.prod.outlook.com (2603:10b6:8:35::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6699.35; Tue, 29 Aug 2023 11:45:47 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d%7]) with mapi id 15.20.6699.034; Tue, 29 Aug 2023
 11:45:46 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <MW4PR11MB705460D62BA130E4674E5556EFE7A@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230828173405.59812-1-gustavo.sousa@intel.com>
 <DM4PR11MB597193DFDCC38D7E92C9CFC187E0A@DM4PR11MB5971.namprd11.prod.outlook.com>
 <169325913612.6737.8521384979789302140@gjsousa-mobl2>
 <DM4PR11MB59717445B0CF7E5FD845A24A87E0A@DM4PR11MB5971.namprd11.prod.outlook.com>
 <MW4PR11MB705460D62BA130E4674E5556EFE7A@MW4PR11MB7054.namprd11.prod.outlook.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "Sripada, Radhakrishna"
 <radhakrishna.sripada@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Tue, 29 Aug 2023 08:45:41 -0300
Message-ID: <169330954110.1509.13185236992348154652@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR03CA0128.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::13) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|DM8PR11MB5608:EE_
X-MS-Office365-Filtering-Correlation-Id: 41f1f16a-1bbd-49e6-e273-08dba8857bba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1gSi0uyAo+InQaER+hGoYtjbjuEXRPUM1E9V4yGZaah+uwsXD6iZf0TxRQG/WDPPj6LfV1pimyMnbiMdxvK7MkyLkPJOpCk2ivSVV5ePi+DoJxX++baBxDgO85XNxWf48EYS71BngwR4DhgXK0WUxcVjrP88zRgKPbeDfDtcLnNj+Si0aoctLscQ9riH8aM3fBXzDwT/PT3Dx9Xst3FefuVnaG11BFEKZWGM1Dtwm+w3t0Ey7QMbYNjrDxjqvfC/+0I9PeQrcHr09Hd10RFBrWv2qhnXIkSBtv/nJHKWRCPJejLcOnn+UnDYbF/DqevD8KnWVrAaY8KCsvnHh0Hm9VT4KGGJHvF4rjiH0zgfjim4CdTOZc/aX4tBFRHvx9SGe6wj+k+SNW+t7xflnr7WhQCs4S86aZXZIxpsCvwT+nUniBQct3nstPnCo/e9Gm34zq/hC7tg4nIV8OGStUIdUXCP3RFPo/uyQvUXHsrnYAOdVGtTL1xtW9ULlxJUTG8z9//vrRIvZV6ZdUAIvgSXyX3uy//DXkGE5MirCVobQhwkq5x6QbiOkkNy4w5SOzBV
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(366004)(39860400002)(396003)(376002)(136003)(346002)(1800799009)(451199024)(186009)(9686003)(6512007)(38100700002)(316002)(41300700001)(82960400001)(2906002)(83380400001)(30864003)(33716001)(86362001)(26005)(5660300002)(44832011)(8676002)(8936002)(6666004)(6506007)(6486002)(66476007)(66556008)(53546011)(110136005)(66946007)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z0laZEVrRXJmOXdHeFN6alFPb0ZhODl4cGlYMzBzcWZoVzRLQ210RTB3RWFp?=
 =?utf-8?B?eFd4aGhVN3BjZm5VcDU0VHBwOFE5QUhwK0trV05ZcVN2YmZPRU5xTlZvcExx?=
 =?utf-8?B?S0ozVzVEZndjbDZkQzJ4L3hxQlZkYnZxb000SmVWb0lQYlpXdHc4MWNCYnA3?=
 =?utf-8?B?aW1Nc01tdHZwNHBIUnp3OFBTbmQ5U0J6RTRZNlZYaDZWZTRSWCtzUkhhZzY2?=
 =?utf-8?B?T0FGRDQrUTgyd1VON2Y2UjlJOVppc0taZDYzckRFZjB0MlptdHJvMEY0R2JD?=
 =?utf-8?B?OWpKNEpUeHZRYVJwYTBZaEJBcDcxcW1oa1FtR0xleTQrU29yQ085UzYxUFdI?=
 =?utf-8?B?OTBvcHZwaWQ1M0JxWU9xMVdLYThZQzJEZUFOSlUzd1RCZk5JZStpTnl0Y2E2?=
 =?utf-8?B?aWx6S0VjWUtzazhRU3JRdUd3Vm9scTIvbVZyWmwzZThxNkFDY1lSbWhjbnh3?=
 =?utf-8?B?bllmandpL2RUcnhXY3pYamgvL0EzTG9IWlIwcnhhbW5QSUxWZWEvaEZnc3hv?=
 =?utf-8?B?SnJ0aWM0Rmo1anNSL0hnQ0RxN2ZRK21YRytHWFVqcDQ1dDNRTGlHd3RzaTly?=
 =?utf-8?B?VkNZS0plNEFRTGdxOGRnajREeGJTVURwRXNEck9zcW5ZSGVJaHF0TWV1aHpK?=
 =?utf-8?B?Ri9neHdINVh3MCtRSXRuei9BbkJac0dpZmJ5dkdPWlhHcE1FL0hqcTZkWFJL?=
 =?utf-8?B?eUlZWGkwanlZMmNFSTFlR0hRL2VEZ0d3SXdmaUZHOW5EdzRjeUFHbldyZjVP?=
 =?utf-8?B?QjJHZTVnOE5waEVRbEVsSEltWFNtaXIxR2J3Qy9scmJlRmN6ekN3QllFayts?=
 =?utf-8?B?NTBRRXpMbVlOOUh5MGZoSm1kbks1cE02bjlTVUtzQm93NkVNVU1Wc21IZ1pa?=
 =?utf-8?B?amd5UnVoZmlyOGN6Ky93Ym1iSCtRYXNuU0hoTWRsYmszRi9JbFgwemZaS2hU?=
 =?utf-8?B?Ym8xUFA2cFdNd1VmYkxxRU5NTUw1bFNUc0RzMWN4NjBoNjJNTy9QUGcySWpi?=
 =?utf-8?B?a0FBZkJJMkFBUFp0V0taRUhiMlp1R2NBbEN3RnBieTdsZlpVZEprVXhxVWxR?=
 =?utf-8?B?WXhxdFIwdjJ3SjRLZHVKZW50N051TEp5dFZCc3dJMFpPN3oxWk9McFNMK1dh?=
 =?utf-8?B?YjhOdnUrYlUwV3ZzYWQ5V1g3Q2JubXl6R3FjdHl3VW1QYnB2d2JPdnJvNXdp?=
 =?utf-8?B?SlNtQlhydDhNdjZtQ1JPdjBmbWNvcjJCZWZ5c1ZtZW82WW5wUUlFdjVwcnNL?=
 =?utf-8?B?VUNSSmVwVThueGE4cFF4dW9HMEU5NTZ4YjNJM0Q0ZjBUUFhMckZsNkplbHZX?=
 =?utf-8?B?MU9uRnArMHVQcHVkclhEMmJrZXpmRC9mdlpUSGZtK0Q2dURSK1J4OVp6eHBh?=
 =?utf-8?B?aFJaYStyRlNGenFMUHBjMmQvNndpb3lsMkhFQnpvY1hXWDBlNFRqM09GYXlj?=
 =?utf-8?B?bUtCNEY3dXlhS0Y3MVdzOWlOcDc5cjBpSWFuUE1Xdy9nZllIYlZpNU5DRWxR?=
 =?utf-8?B?dWR4K1FuSzhyVnFxZ0IrMXV1Snhsc1RJREpZVzhHWktmU0Rlbk5lY3h5K012?=
 =?utf-8?B?dnQ5WmV5ZGxaR0ZnbmF6TndQZGxNNDNRV0s1Z2hsZ0Vyb0tMeVhvVlhQbXFK?=
 =?utf-8?B?b2RaVkNJNENOVE9TM1pna2hWdndzY0JwTXBUd3htNUpHQlVhb1lsS2FPVHFJ?=
 =?utf-8?B?T3R3YzRUMEFBMlRYeFNaQUdHd1lBbjduY0ZrSGRLTlVDbVBTSTZWblRiZDJI?=
 =?utf-8?B?di9QaGtzMTl3THgzQ1BCa0RDSWNYMlMyTzNtWXd5VlhNNnlLVDlyRTZSZUdt?=
 =?utf-8?B?ZzdhQ0svcDlqaTVTN2hZZEJtZ1pHWU1Nc1ljNTJ4K1FyVlZsd3d4cnQ0VFZt?=
 =?utf-8?B?VEtrZXVwTGV3SUtDQVExNms5TW5jWUcrSEErZ3A1TU1oMWhTQzM3Ui9lYUVU?=
 =?utf-8?B?a0hLMmtnSE1ZYzVUMnhBb0oxdm9KTlBDcjhiMEJYelhGYmNUVlRXOGhhL21D?=
 =?utf-8?B?TnNUSk9kS0RNM2RBWnl5VWFIZ3NNMHYweWpING4yMlJZdjFNeGNqNDZNOWJL?=
 =?utf-8?B?UHhhUDdzY2RnRElDTVc5a3B6TElmbGZlcXpWM2VQMmJDYmt1SlpZK0hsYmtG?=
 =?utf-8?B?cmgrUStsSVRFNzJHQzQ2RzdkaXNHbXk2VmIydGVabTQrWGpIc0pzMVp5OENh?=
 =?utf-8?B?V3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 41f1f16a-1bbd-49e6-e273-08dba8857bba
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Aug 2023 11:45:46.6694 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SW50hwt46482pY/vHOF9QJ0mfCo3sq3caLEedDfSZwou0F2+X5i3epZ8be4IRPzfTq2nQrOcFHfx51PeEl2vfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5608
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

Quoting Kahola, Mika (2023-08-29 06:35:17-03:00)
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of S=
ripada, Radhakrishna
>> Sent: Tuesday, August 29, 2023 1:54 AM
>> To: Sousa, Gustavo <gustavo.sousa@intel.com>; intel-gfx@lists.freedeskto=
p.org
>> Subject: Re: [Intel-gfx] [PATCH] drm/i915/cx0: Check and increase msgbus=
 timeout threshold
>>=20
>> Hi Gustavo,
>>=20
>> > -----Original Message-----
>> > From: Sousa, Gustavo <gustavo.sousa@intel.com>
>> > Sent: Monday, August 28, 2023 2:46 PM
>> > To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>; intel-
>> > gfx@lists.freedesktop.org
>> > Subject: RE: [Intel-gfx] [PATCH] drm/i915/cx0: Check and increase
>> > msgbus timeout threshold
>> >
>> > Quoting Sripada, Radhakrishna (2023-08-28 17:30:19-03:00)
>> > >Hi Gustavo,
>> >
>> > Hi, RK.
>> >
>> > Thanks for the feedback! Please, see my replies below.
>> >
>> > >
>> > >> -----Original Message-----
>> > >> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
>> > >> Of
>> > Gustavo
>> > >> Sousa
>> > >> Sent: Monday, August 28, 2023 10:34 AM
>> > >> To: intel-gfx@lists.freedesktop.org
>> > >> Subject: [Intel-gfx] [PATCH] drm/i915/cx0: Check and increase
>> > >> msgbus
>> > timeout
>> > >> threshold
>> > >>
>> > >> We have experienced timeout issues when accessing C20 SRAM register=
s.
>> > >This wording is misleading. It seems to imply that we directly access
>> > >SRAM registers via msg bus but the reads/writes go through
>> > >intermediate registers and it is this read/write that is failing. Add=
ing extra clarity here would be helpful.
>> >
>> > Hm... Okay. I thought that would already be implied to someone
>> > familiar with the code. What about:
>> >
>> >     s/when accessing/when going through the sequence to access/
>> This is better to indicate that it is not direct access.
>>=20
>> >
>> > ?
>> >
>> > >
>> > >> Experimentation showed that bumping the message bus timer threshold
>> > >> helped on getting display Type-C connection on the C20 PHY to work.
>> > >>
>> > >> While the timeout is still under investigation with the HW team,
>> > >> having logic to allow forward progress (with the proper warnings) s=
eems useful.
>> > >> Thus, let's bump the threshold when a timeout is detected.
>> > >>
>> > >> The maximum value of 0x200 pclk cycles was somewhat arbitrary - 2x
>> > >> the default value. That value was successfully tested on real
>> > >> hardware that was displaying timeouts otherwise.
>> > >>
>> > >> BSpec: 65156
>> > >> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> > >> ---
>> > >>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 41
>> > >> +++++++++++++++++++  .../gpu/drm/i915/display/intel_cx0_phy_regs.h
>> > >> | 12 ++++++
>> > >>  2 files changed, 53 insertions(+)
>> > >>
>> > >> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > >> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > >> index dd489b50ad60..55d2333032e3 100644
>> > >> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > >> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > >> @@ -5,6 +5,7 @@
>> > >>
>> > >>  #include <linux/log2.h>
>> > >>  #include <linux/math64.h>
>> > >> +#include <linux/minmax.h>
>> > >>  #include "i915_reg.h"
>> > >>  #include "intel_cx0_phy.h"
>> > >>  #include "intel_cx0_phy_regs.h"
>> > >> @@ -29,6 +30,8 @@
>> > >>  #define INTEL_CX0_LANE1                BIT(1)
>> > >>  #define INTEL_CX0_BOTH_LANES        (INTEL_CX0_LANE1 |
>> > >> INTEL_CX0_LANE0)
>> > >>
>> > >> +#define INTEL_CX0_MSGBUS_TIMER_VAL_MAX        0x200
>> > >> +
>> > >>  bool intel_is_c10phy(struct drm_i915_private *i915, enum phy phy)
>> > >> {
>> > >>          if (DISPLAY_VER_FULL(i915) =3D=3D IP_VER(14, 0) && phy <
>> > >> PHY_C) @@ -119,6 +122,43 @@ static void intel_cx0_bus_reset(struct
>> > drm_i915_private
>> > >> *i915, enum port port, i
>> > >>          intel_clear_response_ready_flag(i915, port, lane);  }
>> > >>
>> > >> +/*
>> > >> + * Check if there was a timeout detected by the hardware in the
>> > >> +message bus
>> > >> + * and bump the threshold if so.
>
>Just a thought but wouldn't it be simpler if we just set the timeout to it=
's maximum and discard the check here?

I'm not sure which exactly check you are talking about here:

  1) The check on the XELPDP_PORT_MSGBUS_TIMER_TIMED_OUT.

     I think this could give us useful debugging info, for example, if our =
code
     thinks the message bus timed out while the bus hardware did not say so=
. I
     would prefer to keep this one, if you are okay with it.

  2) The check on the current value of the threshold and the exponential
     increase up to the maximum.

     I would agree that I did a bit of over-engineering here. I guess I cou=
ld
     simply to a rmw using INTEL_CX0_MSGBUS_TIMER_VAL_MAX directly as you
     suggested; and maybe rename INTEL_CX0_MSGBUS_TIMER_VAL_MAX to
     INTEL_CX0_MSGBUS_TIMER_BUMPED_VAL, just not to give the impression tha=
t
     0x200 is the maximum accepted by the hardware.

What do you think?

--
Gustavo Sousa

>
>-Mika-=20
>
>> > >> + */
>> > >> +static void intel_cx0_bus_check_and_bump_timer(struct
>> > >> +drm_i915_private
>> > >> *i915,
>> > >> +                                               enum port port, int
>> > >> +lane) {
>> > >> +        enum phy phy =3D intel_port_to_phy(i915, port);
>> > >> +        i915_reg_t reg;
>> > >> +        u32 val;
>> > >> +        u32 timer_val;
>> > >> +
>> > >> +        reg =3D XELPDP_PORT_MSGBUS_TIMER(port, lane);
>> > >> +        val =3D intel_de_read(i915, reg);
>> > >> +
>> > >> +        if (!(val & XELPDP_PORT_MSGBUS_TIMER_TIMED_OUT)) {
>> > >> +                drm_warn(&i915->drm,
>> > >> +                         "PHY %c lane %d: hardware did not detect
>> > >> + a
>> > >> timeout\n",
>> > >> +                         phy_name(phy), lane);
>> > >> +                return;
>> > >> +        }
>> > >> +
>> > >> +        timer_val =3D
>> > >> REG_FIELD_GET(XELPDP_PORT_MSGBUS_TIMER_VAL_MASK, val);
>> > >> +
>> > >> +        if (timer_val =3D=3D INTEL_CX0_MSGBUS_TIMER_VAL_MAX)
>> > >> +                return;
>> > >> +
>> > >> +        timer_val =3D min(2 * timer_val,
>> > >> (u32)INTEL_CX0_MSGBUS_TIMER_VAL_MAX);
>> > >     ^ is this cast necessary?
>> >
>> > Yes. I remember getting a warning without it. Let me remove it to reme=
mber...
>> Got it thanks for the quick check.
>>=20
>> >
>> > ...done! I think it complains because the arguments are of different t=
ypes:
>> >
>> >     In file included from drivers/gpu/drm/i915/display/intel_cx0_phy.c=
:8:
>> >     drivers/gpu/drm/i915/display/intel_cx0_phy.c: In function
>> > =E2=80=98intel_cx0_bus_check_and_bump_timer=E2=80=99:
>> >     ./include/linux/minmax.h:20:35: error: comparison of distinct
>> > pointer types lacks a cast [-Werror]
>> >        20 |         (!!(sizeof((typeof(x) *)1 =3D=3D (typeof(y) *)1)))
>> >           |                                   ^~
>> >     ./include/linux/minmax.h:26:18: note: in expansion of macro =E2=80=
=98__typecheck=E2=80=99
>> >        26 |                 (__typecheck(x, y) && __no_side_effects(x,=
 y))
>> >           |                  ^~~~~~~~~~~
>> >     ./include/linux/minmax.h:36:31: note: in expansion of macro =E2=80=
=98__safe_cmp=E2=80=99
>> >        36 |         __builtin_choose_expr(__safe_cmp(x, y), \
>> >           |                               ^~~~~~~~~~
>> >     ./include/linux/minmax.h:67:25: note: in expansion of macro =E2=80=
=98__careful_cmp=E2=80=99
>> >        67 | #define min(x, y)       __careful_cmp(x, y, <)
>> >           |                         ^~~~~~~~~~~~~
>> >     drivers/gpu/drm/i915/display/intel_cx0_phy.c:152:21: note: in
>> > expansion of macro =E2=80=98min=E2=80=99
>> >       152 |         timer_val =3D min(2 * timer_val,
>> > INTEL_CX0_MSGBUS_TIMER_VAL_MAX);
>> >           |
>> >
>> > >
>> > >> +        val &=3D ~XELPDP_PORT_MSGBUS_TIMER_VAL_MASK;
>> > >> +        val |=3D REG_FIELD_PREP(XELPDP_PORT_MSGBUS_TIMER_VAL_MASK,
>> > >> timer_val);
>> > >We do not use REG_FIELD_PREP in the function. Instead we use it in
>> > >register definition in intel_cx0_phy_regs.h.
>> >
>> > I think it makes sense have definitions using REG_FIELD_PREP() in
>> > header files and use those definitions in .c files for fields whose
>> > values are are enumerated.
>> >
>> > Now, for fields without enumeration, like this one in discussion, I
>> > think it is fine to use REG_FIELD_PREP() directly. The MASK is already=
 exposed anyway...
>> >
>> > Besides, it seems we already have lines of code in *.c files using the
>> > pattern
>> > above:
>> >
>> >     git grep REG_FIELD_PREP drm-tip/drm-tip -- ':/drivers/gpu/drm/i915=
/**/*.c'
>> >
>> > Let me know what you think. I could add a
>> > XELPDP_PORT_MSGBUS_TIMER_VAL() macro if you think it is necessary. My
>> > personal take is that using REG_FIELD_PREP() for this case is fine.
>> Let us conform with the norms for the macro-fields used in this file ins=
tead of starting a new pattern.
>>=20
>> --Radhakrishna(RK) Sripada
>> >
>> > --
>> > Gustavo Sousa
>> >
>> > >
>> > >Thanks,
>> > >Radhakrishna Sripada
>> > >
>> > >> +
>> > >> +        drm_dbg_kms(&i915->drm,
>> > >> +                    "PHY %c lane %d: increasing msgbus timer
>> > >> + threshold to
>> > >> %#x\n",
>> > >> +                    phy_name(phy), lane, timer_val);
>> > >> +        intel_de_write(i915, reg, val); }
>> > >> +
>> > >>  static int intel_cx0_wait_for_ack(struct drm_i915_private *i915,
>> > >> enum port
>> > port,
>> > >>                                    int command, int lane, u32 *val)
>> > >> { @@ -132,6 +172,7 @@ static int intel_cx0_wait_for_ack(struct
>> > >> drm_i915_private *i915, enum port port,
>> > >>
>> > >> XELPDP_MSGBUS_TIMEOUT_SLOW,
>> > >> val)) {
>> > >>                  drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting
>> > >> for message ACK. Status: 0x%x\n",
>> > >>                              phy_name(phy), *val);
>> > >> +                intel_cx0_bus_check_and_bump_timer(i915, port,
>> > >> + lane);
>> > >>                  intel_cx0_bus_reset(i915, port, lane);
>> > >>                  return -ETIMEDOUT;
>> > >>          }
>> > >> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> > >> b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> > >> index cb5d1be2ba19..17cc3385aabb 100644
>> > >> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> > >> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> > >> @@ -110,6 +110,18 @@
>> > >>  #define   CX0_P4PG_STATE_DISABLE                        0xC
>> > >>  #define   CX0_P2_STATE_RESET                                0x2
>> > >>
>> > >> +#define _XELPDP_PORT_MSGBUS_TIMER_LN0_A
>> > >>         0x640d8
>> > >> +#define _XELPDP_PORT_MSGBUS_TIMER_LN0_B
>> > >>         0x641d8
>> > >> +#define _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC1                0x16f25=
8
>> > >> +#define _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC2                0x16f45=
8
>> > >> +#define XELPDP_PORT_MSGBUS_TIMER(port, lane)
>> > >>         _MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
>> > >> +
>> > >>          _XELPDP_PORT_MSGBUS_TIMER_LN0_A, \
>> > >> +
>> > >>          _XELPDP_PORT_MSGBUS_TIMER_LN0_B, \
>> > >> +
>> > >>          _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC1, \
>> > >> +
>> > >>          _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC2) + (lane) * 4)
>> > >> +#define   XELPDP_PORT_MSGBUS_TIMER_TIMED_OUT                REG_BI=
T(31)
>> > >> +#define   XELPDP_PORT_MSGBUS_TIMER_VAL_MASK
>> > >>         REG_GENMASK(23, 0)
>> > >> +
>> > >>  #define _XELPDP_PORT_CLOCK_CTL_A                        0x640E0
>> > >>  #define _XELPDP_PORT_CLOCK_CTL_B                        0x641E0
>> > >>  #define _XELPDP_PORT_CLOCK_CTL_USBC1                        0x16F2=
60
>> > >> --
>> > >> 2.41.0
>> > >
