Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A4076EBB6
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Aug 2023 16:03:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94ADD10E1AA;
	Thu,  3 Aug 2023 14:03:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AEEE10E1A5
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Aug 2023 14:03:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691071391; x=1722607391;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=VEGeRM1YQfdKIBXz6C0sSB9VaZwxAucBmMQpOzNcjto=;
 b=R0tCHe7wPd69axqHKBe5Qs7hYilwxy/7raZ20fKr+ZVX3ynPVjcMVI28
 zjLkPZC0Gt8MCKxDQdO3L6MCSQdbqYhNE6LTSt3MKXiVpP/sUWJudowEp
 Gl2NJc7FTgzzmc12k9qRqGLc+QgNF2oWAYnTgHry//jUdSiP/EseYTCev
 DXzhtGZiAUvvAzgmD3fr4/aeQnbGP3J2HoOR3Ruc4vXFLCIN8SrGCMyEI
 4iWHs8NBd6Rh/AB5p7Ry7wW6/Ba6fnlawhms4KQ/AA3PCGVquJb9J6WGF
 4/Dz3udUOSEzjltmPP/aOvJJrnO25rXJfs6OirCt3+CZCnm8rrcr6LP+j A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="400832118"
X-IronPort-AV: E=Sophos;i="6.01,252,1684825200"; d="scan'208";a="400832118"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2023 07:03:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="679478456"
X-IronPort-AV: E=Sophos;i="6.01,252,1684825200"; d="scan'208";a="679478456"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 03 Aug 2023 07:03:07 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 3 Aug 2023 07:03:07 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 3 Aug 2023 07:03:06 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 3 Aug 2023 07:03:06 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 3 Aug 2023 07:03:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nwKf8x58KM6yp/Jed3U4ixxWDFvJQ/k9G+4zlS74V7hLkAggcKnTHwdZwqG9sWvl2gHJZOBQg1H9bb5EI4XGkoc95Ynu5sr4J+UUmo7fIPbaxcRN6cv1VPipubCSk3I2Xjz7qIfox1f9MVfd39pTxZZUXVt08srXVeHhsVpkNOCg30G368qr7Z0JiavHI85PEIZ2pdMkMPMscrvUdNSqicf4z1j45ECiS0XUwi5/Ib31b3AD70DNeNerRF0ffHScbFunucCxqM/JwY2gekh1uSanY5lRxvZwUObHGrkPns2PafIVozFv7LE6lBjg8NH7JwLB6XWp6DukJp6Nd4APlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7iX6oDeV9B71ZgzIBw/O5hVhYH793NR4L3JyI6hV5TQ=;
 b=gINBm0u26y09CWnxAawWkq37j8D5nchRPlYB790mn1X0J/4xMdr+S8czpcy4YCz9kDEhmAWhitFNzg8Qz9Ajgk7ctFmDgT4nNSGeyd/6WBLjroLXXj1/mJKhWpcyCexITqtizA2cacbGGqgmH8V9LIvWs+AKKQlo0yV8Vu7QxxTbM/t3Ue+Qct6AI8wr4IjUQJVsucUXxPt9/lrm5qtsTQO/FljP1USBbQig0pUcA/bMftX+xW38K+Jtclkf6/ioMFKIW1ryai082Zr0jqKJwyt8r1Pls/GspZ9rDmtLz57QpTYjeKiH+BduAZeh/3rRvquGHcO7rVSzoepT+sjNEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by PH7PR11MB5796.namprd11.prod.outlook.com (2603:10b6:510:13b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.20; Thu, 3 Aug
 2023 14:03:03 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d%7]) with mapi id 15.20.6631.046; Thu, 3 Aug 2023
 14:03:03 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <879b5cef429c19e943913a59a61aae87d41d92df.camel@intel.com>
References: <20230725212716.3060259-1-gustavo.sousa@intel.com>
 <20230725212716.3060259-2-gustavo.sousa@intel.com>
 <879b5cef429c19e943913a59a61aae87d41d92df.camel@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: "Taylor, Clinton A" <clinton.a.taylor@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Thu, 3 Aug 2023 11:02:57 -0300
Message-ID: <169107137750.5153.13287312407861918616@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW2PR16CA0033.namprd16.prod.outlook.com (2603:10b6:907::46)
 To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|PH7PR11MB5796:EE_
X-MS-Office365-Filtering-Correlation-Id: 882cba38-4fcb-4332-b748-08db942a5aac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: M6951NGbQoGMP4woQYsYCnty81cjroLmjFgqbhfKau5P4IgHQWPxW0WNfgXjTWI9qvOMCSOgzTymbMRw8zTYH52YH2UzJJXG+J5zoIZ9y1o0sF0rOF4eloZXbZg7nZa1vAc2GYjGjdTTo3VODBIB8irAUX//lFxSUvAbNWJv0zo5tifdsfBs60utwjo6QANRMiiLT7L1wnkK6FLZq4Gcnt1pMXbbTpun1l0tHk30Y0nUvIBacdwkt4C8xhRnpZjigv9jhtWGH1eW42Bkr4r6+ntLNepgVyB0+qDEFVqoY2OTSjSSEqt+FW1Gy0LExvDsgfp7oi1uMjBJCfySbxYS2JqzPUojgvg4i758qXwPUj7fD/aEkLV1KAy+vvCMGsDI6WCRoW/0u6JCQNzY9BzMWHoudnhb1sSubFua+y3y2GRN8SRdezx1sUX3mypgB6AekqV0Y7HRbztpjyaRjGkDh7L69EWr0oK9EWe8jxr7PPugVPBP+qHUrRnlPMLNolVgtaM5X3/noVlCRN5xa5o/2mrRGVRyxWHNtqh0C1Gsm9lX5+4+3KLmT+EffWwEaL1W
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(136003)(396003)(39860400002)(366004)(376002)(346002)(451199021)(41300700001)(8936002)(8676002)(83380400001)(186003)(107886003)(6506007)(26005)(86362001)(33716001)(38100700002)(82960400001)(316002)(6486002)(6666004)(478600001)(9686003)(6512007)(54906003)(66556008)(66476007)(4326008)(66946007)(2906002)(5660300002)(44832011);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TGthbHRBYTMrUll1Ky9NbXA3S1phbjI2MlVWTlpPTE96citWK1ZXVGluSUZo?=
 =?utf-8?B?aGFYSURrWUNKd000WUQvMlFuVytxTWQ4ZmpudXN5QXJVR1RiOWYxZUcxelBC?=
 =?utf-8?B?My9MZmFiUzQyNDhOeWJBa3JldVlnaDVhTVprWGpCeWxVUUR0ZDJSU0R6YmNz?=
 =?utf-8?B?akJQUGlwYlRYTkMvaGx6SVM1KzBZTnZJM0pGQ2ZVVURqbHp3VFo3bWpJcmtV?=
 =?utf-8?B?bmxPSXJlcEhlYzUvVnJwYzd0TTh6aEt4M251WWwyOUprRXpsTUZPZjZQOU9u?=
 =?utf-8?B?V2VVTGxuSlhiSnRXek41NjBEbFcvMUNOaWc0TnYyUDFralM5MGh0cllrZ3pZ?=
 =?utf-8?B?RWlGRWdMUXgyU1dEUXY2bU1yN1RZVUhoZDZFbDZBQmJaOVFkalljcUxpSVVj?=
 =?utf-8?B?WkdmYzJ6Umg2M0NiN3BPKzBLL0JyZzkzaExabUJ1S25OZzNWTWNJbnlhUk5q?=
 =?utf-8?B?cHRROWR0NFhHU0tpZEZEZ2QwelJ4d2Faejg1QS9saXRjMXNBYm1VNUU3ZEh6?=
 =?utf-8?B?VFRuTEJqd2tzNXo3YVV6VWg3TEJWaVcwaXBLZkJGUERsYmtxZWZTR0JoSEtX?=
 =?utf-8?B?dnJDenhFeVNsSTNTNWpHeWpEdVBjampVN0MwbmVIeFZKUFcxQjZpWTVmSktY?=
 =?utf-8?B?bFUzTXFpRHdIdW8yVCtDTlpIbnZtR2FVV2VzbDVMTzRtTXZ6MUh4MU1IbDZX?=
 =?utf-8?B?dFNLWnVSQnBMYU04MUFEY1U1NTQzNThSU3RoakpHN3dZWkphSWdJYXNUN2l6?=
 =?utf-8?B?aXdsYnRDQmJWSVFyUmoweTRQbGM0eWkzYVBMNk9yem11RXkrYXR5aUZyb3g0?=
 =?utf-8?B?L1JoWi84KzlQZFQybHN0YWhkYUgwbjRiMTZTdlErQklHRzRrTmxLYTRuSkpk?=
 =?utf-8?B?S24vQytkUVZLOVdGenZiaGw1WThoSncxa04yL2RlbVNOY085VU44Qm9jTW9T?=
 =?utf-8?B?NTZRTXlncnFrNjJaYVhwaXZpSEpoNWNic3JkeEh2TUJNN3U2UmEycWNqbW1G?=
 =?utf-8?B?VDdvdzNNWnJKOWVndmxLQi9rbHk2ZkpiVVUyL2cwWksvcUhkUzBvd0pPNG1T?=
 =?utf-8?B?bmxCaGRBQ2twR0hYRnphY0lkUENNQUNBNmFHN1FUV1V4ZjhHdHZ5Vi9yOE54?=
 =?utf-8?B?aGpwcFdZNkhxa25CMDVhTDRpVEJsVDRCbDB1YXVrWXVvalFWMnEyazNtaWp1?=
 =?utf-8?B?MFE2WURZMTl5RGIydFljLyswWEloVDBJTzg1dnF3ZHYrQ09kVjlxU1RVY1Fl?=
 =?utf-8?B?b0dIYTJkUStpN2pHb0UxU2xlYkFuZVJtNXI3SkRGZUJ5UVZmNmh4dFRHQWtq?=
 =?utf-8?B?U2UwVkUrNEd3UFV1RVVIcE4rbVlpMTVkc28vWk5nWWd0OU9DdXVNazBuUlY0?=
 =?utf-8?B?SjBvbUNZZ1o1bW1yNmpWRlJuZjFLT1I2MWNzUHVINEllOFU1SDhQTERDWklv?=
 =?utf-8?B?RnFIdkl5cUhZZjJBOGIrVVZyeEZDRlJDaTJjYUF0V1V4cWhJbjFZL0Y0Mm5Y?=
 =?utf-8?B?emphVTMyM09CQUpmR1pGOTQ1VFg4a0IzdDN2NzlSaGU5RlFvb1UxNXRyN0F6?=
 =?utf-8?B?Y0RTNnc2a0dJb1lRakJiZUJ2WkgvOGViNlVMRjkrV2pSb2NrTk8zNFZ4OWJG?=
 =?utf-8?B?SU5sSENON0U2WElGbWc4TEoxRytGUVRndW12eFo3WSt6Rnl1MS8vMXlTTy9I?=
 =?utf-8?B?RXU5Q0xEazF2WWhkMTJHcStXYmZ6MkVUSjBPcG92eUtZWlVJNXd4VVlJYnE4?=
 =?utf-8?B?YkJKTldwdW5sczBNVkRTWHZ1WlpnS2RBWk1GZWdyODZ0ZzJ6RXFuanZpV3dV?=
 =?utf-8?B?UnNQVjA3VVI1YVRHbUJyYkdDV2NSQXNhdTd2Z2J1bkVYYXdXSE9iMUM1S1pV?=
 =?utf-8?B?K0N2UFN0bG94Z1Z2THJxK1ZaTUEwV01XUXZjMUJLMC8wZmJUMTUyMjlSV24y?=
 =?utf-8?B?ZGx2eVg3NFl3NEpmT1Z2RHlUNUpTVGtTMGZCZUpJWHdmWXBsMkp6bWJJZ09K?=
 =?utf-8?B?WlMxb3ZoNEYzbitOaS85U0xXUGYyRnhJbXk5bHI3djlqc0hjckdkTTZBY2Fx?=
 =?utf-8?B?YTdyR2Y2VDJaazZ6QjVpVVNpNmZwaTRCSTFBajJRZTdETDdseUpGcm9qaEVI?=
 =?utf-8?B?OHozRzhhN0w3TEl3RERjdVNCeHhWRU5ET2h3TW9TZTlMV1pMY2RLRjVoZEFl?=
 =?utf-8?B?YVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 882cba38-4fcb-4332-b748-08db942a5aac
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Aug 2023 14:03:03.7225 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F9UPKmSlNGFG2kaQ7GnyUYt1VvMelJ5Qmh+Xwc1HIl1qijtrnvrh2G9Wdime3mC0heYufnwFyz7CJNXnLtT9nw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5796
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/cx0: Add
 intel_cx0_get_owned_lane_mask()
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

Quoting Taylor, Clinton A (2023-08-02 18:41:27-03:00)
>On Tue, 2023-07-25 at 18:27 -0300, Gustavo Sousa wrote:
>> There are more parts of C10/C20 programming that need to take owned
>> lanes into account. Define the function intel_cx0_get_owned_lane_mask()
>> and use it. There will be new users of that function in upcoming
>> changes.
>>=20
>> BSpec: 64539
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 44 ++++++++++++--------
>>  1 file changed, 27 insertions(+), 17 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> index 1b00ef2c6185..b903ceb0b56a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> @@ -46,6 +46,22 @@ static int lane_mask_to_lane(u8 lane_mask)
>>          return ilog2(lane_mask);
>>  }
>> =20
>> +static u8 intel_cx0_get_owned_lane_mask(struct drm_i915_private *i915,
>> +                                        struct intel_encoder *encoder)
>> +{
>> +        struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder=
);
>> +
>> +        if (!intel_tc_port_in_dp_alt_mode(dig_port))
>> +                return INTEL_CX0_BOTH_LANES;
>> +
>> +        /*
>> +         * In DP-alt with pin assignment D, only PHY lane 0 is owned
>> +         * by display and lane 1 is owned by USB.
>> +         */
> lane_revesal is not being handled here. Do we need to take lane_reversal =
into account
>with Pin assignment D is being used?

According to the BSpec, we should only care about lane reversal on native
connections, and both lanes are always owned for those cases.

In Type-C DP-alt mode, FIA handles stuff so that display hardware and softw=
are
does not need to handle lane reversal.

--
Gustavo Sousa

>
>-Clint
>
>> +        return intel_tc_port_fia_max_lane_count(dig_port) > 2
>> +                ? INTEL_CX0_BOTH_LANES : INTEL_CX0_LANE0;
>> +}
>> +
>>  static void
>>  assert_dc_off(struct drm_i915_private *i915)
>>  {
>> @@ -2534,17 +2550,15 @@ static void intel_cx0_phy_lane_reset(struct drm_=
i915_private
>> *i915,
>>  {
>>          enum port port =3D encoder->port;
>>          enum phy phy =3D intel_port_to_phy(i915, port);
>> -        bool both_lanes =3D  intel_tc_port_fia_max_lane_count(enc_to_di=
g_port(encoder)) > 2;
>> -        u8 lane_mask =3D lane_reversal ? INTEL_CX0_LANE1 :
>> -                                  INTEL_CX0_LANE0;
>> -        u32 lane_pipe_reset =3D both_lanes ?
>> -                              XELPDP_LANE_PIPE_RESET(0) |
>> -                              XELPDP_LANE_PIPE_RESET(1) :
>> -                              XELPDP_LANE_PIPE_RESET(0);
>> -        u32 lane_phy_current_status =3D both_lanes ?
>> -                                      XELPDP_LANE_PHY_CURRENT_STATUS(0)=
 |
>> -                                      XELPDP_LANE_PHY_CURRENT_STATUS(1)=
 :
>> -                                      XELPDP_LANE_PHY_CURRENT_STATUS(0)=
;
>> +        u8 owned_lane_mask =3D intel_cx0_get_owned_lane_mask(i915, enco=
der);
>> +        u8 lane_mask =3D lane_reversal ? INTEL_CX0_LANE1 : INTEL_CX0_LA=
NE0;
>> +        u32 lane_pipe_reset =3D owned_lane_mask =3D=3D INTEL_CX0_BOTH_L=
ANES
>> +                                ? XELPDP_LANE_PIPE_RESET(0) | XELPDP_LA=
NE_PIPE_RESET(1)
>> +                                : XELPDP_LANE_PIPE_RESET(0);
>> +        u32 lane_phy_current_status =3D owned_lane_mask =3D=3D INTEL_CX=
0_BOTH_LANES
>> +                                        ? (XELPDP_LANE_PHY_CURRENT_STAT=
US(0) |
>> +                                           XELPDP_LANE_PHY_CURRENT_STAT=
US(1))
>> +                                        : XELPDP_LANE_PHY_CURRENT_STATU=
S(0);
>> =20
>>          if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL1(por=
t),
>>                                           XELPDP_PORT_BUF_SOC_PHY_READY,
>> @@ -2564,15 +2578,11 @@ static void intel_cx0_phy_lane_reset(struct drm_=
i915_private
>> *i915,
>>                           phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT=
_US);
>> =20
>>          intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(port),
>> -                     intel_cx0_get_pclk_refclk_request(both_lanes ?
>> -                                                       INTEL_CX0_BOTH_L=
ANES :
>> -                                                       INTEL_CX0_LANE0)=
,
>> +                     intel_cx0_get_pclk_refclk_request(owned_lane_mask)=
,
>>                       intel_cx0_get_pclk_refclk_request(lane_mask));
>> =20
>>          if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(po=
rt),
>> -                                         intel_cx0_get_pclk_refclk_ack(=
both_lanes ?
>> -                                                                       =
INTEL_CX0_BOTH_LANE
>> S :
>> -                                                                       =
INTEL_CX0_LANE0),
>> +                                         intel_cx0_get_pclk_refclk_ack(=
owned_lane_mask),
>>                                           intel_cx0_get_pclk_refclk_ack(=
lane_mask),
>>                                           XELPDP_REFCLK_ENABLE_TIMEOUT_U=
S, 0, NULL))
>>                  drm_warn(&i915->drm, "PHY %c failed to request refclk a=
fter %dus.\n",
