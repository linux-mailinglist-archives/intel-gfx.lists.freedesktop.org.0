Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3BC79D557
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 17:53:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DED5E10E435;
	Tue, 12 Sep 2023 15:53:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FCA610E234;
 Tue, 12 Sep 2023 15:53:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694533984; x=1726069984;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=3VC0HonkGj1AMUOFiFDndRSX6xKYIzrzjfrzaACrkbQ=;
 b=hXk+I1L8MKdfjBUtBjVkOLuzzJDv2SSsDu8oGatsApdNP0N9SvgrXHl1
 hLo5RbaKVZ+PeTgdaq15DUW4lBD6dSE83btQPLi2No2VYkcmiooPd6v/q
 PslQ+B0Uk/3NHHhQIBJOkkYmoo/IhPoyKFp5V8l4d2gntgbWuodSjLNpq
 BBdB8tqm1b4GjcMYXuhqVMXB/Pz6C04x4IdSocu2jCrccgO+UaHhIJBb2
 Mm8OspWfAy8YrQXB6U8zXRCzA7MFihUFWEGQ5fl501mCd7mTUVqKmYE0N
 gtPwE8GNvuaySpN8OD5fmy7YfunJiZ+uIVDcCi/kY5J9TN1KvpGh4yzQM g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="368678870"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="368678870"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 08:53:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="773085757"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="773085757"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2023 08:53:03 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 08:53:03 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 12 Sep 2023 08:53:03 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 12 Sep 2023 08:53:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GXf9yjdAljsZm9iS2BMlEkshbq7GfLSvwEfZuzB++5tsVzGvTRlAqNM5bNmQzPiQbxXeeJ76VbYbHsCvl36vbQaY0B9Ykl2f8cwjsZp95mXgPoJsplpuGaKyEonXPenKMZO6rrVPxia6jkKJCgDDHSA4Ca8WYE5GmOYhDGXw3yTuTjLH3Tq2pRyvj1H+ZeCyaMXsVaAUIDSeCXAskgudTOaNwcg5pz7T0rxuZTJ2X9uNh61r8ryNb1D0Lgi/980wZecFqFVkghu9dUcM1gd7tji9FCHUYXcTX1ykcD1KTU40Rw2bpHpZWwaF4R35U8qFKJvcbIY/OqFJROBVUtUb4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B1HmH0h8XoLb0BKKN7xqd2sAJKAErBBYU4ZeJ5g8GoI=;
 b=Qb6n7NzX0SL6PPrA27I+DxiJo+E6MrCiZlBr/uKwBogKNuL+jHQKNofkSwIGAhvX1lDfwDftv+Nwa4nB5fu5Xb/OMKzJuCyFxdJHIl7WGO2QbDi5U7ou7A0XsxBkyaPF/H3n6pXtHXpk+03TJAmCOj/zvYt8+eW3IUuRcbtgxxSYqbtKQidptRwa7wGA00IpvKQQbtmElsGL/tc61rXIMGjX/zLUzYuniKfG21j5HRRtfyhSYAp1MyCml+QcQS3x5hud+4lGC/gHav2MKo/qYi+ooZDQJ1kps+tZ2XU6dg15plDmE2pkW91+/NiZwfuL4IUt1EEh1TZ0A2ZdnsB3sQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by BL1PR11MB5478.namprd11.prod.outlook.com (2603:10b6:208:31d::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.37; Tue, 12 Sep
 2023 15:53:00 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf%6]) with mapi id 15.20.6768.029; Tue, 12 Sep 2023
 15:53:00 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230912044837.1672060-11-lucas.demarchi@intel.com>
References: <20230912044837.1672060-1-lucas.demarchi@intel.com>
 <20230912044837.1672060-11-lucas.demarchi@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Tue, 12 Sep 2023 12:52:53 -0300
Message-ID: <169453397340.18586.11411882363811991908@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BY5PR20CA0019.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::32) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|BL1PR11MB5478:EE_
X-MS-Office365-Filtering-Correlation-Id: c6beffdc-0cb2-45c2-7007-08dbb3a856d9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0inUZlhdam3gMsNwTD2QO971kmNVwItc+KKPOhMKTc9riplwR4XfACXY90w6tpE0fl1r3lwvvOTMzOJ8yWOxkZxA/wMrWHf/i4WZMj7srim2BVm81sNPw7vCKC+Rp8pUQk+HfjhCRo3JbpDDDtNSUxr82/MqsXEWwfBjPjbIW8y68WL8icQcjUDwJ/ZJ5fIQc/giqM94ZZHmkiFH3+5yOVfKOjXSR0fQLV/EitzjzD9o94eE3Lin4yfLmObdLkr6wJ+FonOwpdHeGzwTiffV1nwjsDRDE8vj5DyL3m92ot6JwFwdkKHmOAWH8iSfwqBqK9M2crA18MDRTZy6P9uwZkw2L9wBey41P/donzXw4ak6oD0U+Tpd4Mze7WfXLldvWewgJXEh/jD804zgzb7eqk1voIAMd0HqFIpE/yPA5y0NMJpFpQsqmtq1EAbPoo70XVsb+7+nT48Pl5a8ipcPysXzm/4e4fPLd4T7XZVIE/ztRPLVRkuuEYgBe3b5n7AjrymyqYvo4rR484yLUphkO2yhLTasG6ufNBXaE0QVCsTeeACt+t4sGoBtejStDXY0
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(136003)(346002)(396003)(376002)(39860400002)(366004)(1800799009)(186009)(451199024)(41300700001)(66899024)(82960400001)(38100700002)(6666004)(33716001)(478600001)(2906002)(86362001)(83380400001)(26005)(9686003)(6512007)(6486002)(6506007)(107886003)(66946007)(316002)(66476007)(66556008)(54906003)(30864003)(5660300002)(450100002)(44832011)(8676002)(8936002)(4326008)(579004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZEY5T3hsYWtnT2lVQ2hzcW9tMUg1SEZpNnRiYTZZcHdYSnBlMW5veUlNS1lN?=
 =?utf-8?B?UnNOMUxBWTBEU3piUzZmYkMyZFpyeEVLTnRuM0o5U2ZhQnRhRlFvV3p3M2xR?=
 =?utf-8?B?d09CYlV2UytWZFVONWpQallSMW1rVlZaTUFwNWI3RVdqMUtxZnhvc3ZCVWFJ?=
 =?utf-8?B?WnFGNGZGTHROaWJBdGRLeVlkYTIrNGZYbm04djhnSGlKOGh6SXR3RksvaDk0?=
 =?utf-8?B?WXE4dVVYOTIxdjRCNHNYazhMZGlIcWxDUlNDN21uS3F5OXBBYW5pYklIaDlw?=
 =?utf-8?B?cDJCZjZYU1pNZmVTQ2l0cGpSai9uN0pKSjh6aWZGQVBYT0RaeVJUaUY5byty?=
 =?utf-8?B?aTQ1aHp0d21jSDZDa3RZTllQa2V5SFJ4WGxzQVdyOXpTdmREaWVsdjVJUWZZ?=
 =?utf-8?B?NDl4MDlRNEUrMnRsakxEVDdjUFA0ajU2aHNrWFRIK3hNdmJiUHFwV3g5THYw?=
 =?utf-8?B?aThZZ3BiTmxJQ2doOHpXalF1WVZZeXVLK3RCQmZncXp5Z2piNVc0OC9HTHFV?=
 =?utf-8?B?VWdvZE5hclFUQ1ZxcExPYUdMLzlBK2d2elpJRGtTdWE2dHZYK2JvWWFzMzNC?=
 =?utf-8?B?Q1lkVzRFTUlRckhKb3YycGp3Y05Id0NRazMybk5VZ1NjWWxvOFVpanVlZkts?=
 =?utf-8?B?N3VwWks2UnFVM0ZuZ2ZtNTRxeXg0OFVTVHRnd3RjajZOendZNzlRd1cwWkRs?=
 =?utf-8?B?M1psWm53VWxEZ2Vab3RwZjhRa2dHN1NFT0JtVDNoMFZyL3QxNU5Cb01obERj?=
 =?utf-8?B?QmRyVVhKeldBOXZSZzhZSlI4L092ZHlVYTY5aGR6SDNpZVJPZ3dUWDdhRC9B?=
 =?utf-8?B?Z0RyenRTdjA4Zm0vMjcxTk1HcUxOcS9Sa0xLUmJEMlhSYnFKclNuS01OTVBO?=
 =?utf-8?B?bVVEbWJDN2ViNG5qbiszUjZ3MXhpZ0lhdEJNcWpWbllaZkNpaTZiUTFzTUk0?=
 =?utf-8?B?UVFhYThCaGpKVSt3R1ViSnFNSUg0WllvYmxuYWpKcEJzelBMUkxmeDllKzFJ?=
 =?utf-8?B?OU5IVXlNK0htbi9nLzkxWEtxTHpYNEIrQlQ0eFFYdlZKVmtldGhFbDI4WHQr?=
 =?utf-8?B?TmlqellNbXQ4UllDTE05SjhiaUlVc0ZtMnh1dWlQdEJEZkxDZUdPU2ZDcFVZ?=
 =?utf-8?B?TzJWVG51VnFYSk5sbDRwUmxSUDhHb2RtbnhIelFHMFpZVUQ2UmJNY0pTWDA3?=
 =?utf-8?B?UHVPcTRLY05DTHF5QklteHczUU9VMW9NM3QzUzExYmdBUUtqbmxCd05qcWxI?=
 =?utf-8?B?dXlkMGkzSDJZUHNvaE1YdUd0eDF5WXBjY2ZCVGJTNUxKWkJaVTBXYlZTVysv?=
 =?utf-8?B?VCt4T08rV0xaK0tFdzZ4QWpMWlp1ekM0UEw1SUFtRVE3bE00dGtBbDNrSEww?=
 =?utf-8?B?czJ3R1JTZnJWQVliM3RWS25YaGk4dXVIQjRPcUp1RGptUEdRS2w4eStySGRa?=
 =?utf-8?B?OE9Na3hNcXBObUhJb1U5eFVTWDV3VlQ4QTVUU04yMXZPcDM5RzZoeWxMWVZt?=
 =?utf-8?B?WVNQVmxQempDa2NqTG13SmI3RkZFNEE5OU1yeGRlSmRiY3ZwQ2dyRTh1SU01?=
 =?utf-8?B?djNzSkpUY1JZUldIYUFNMEJiakZveXF5T0dFRjZYdmJOWDRCSHczZStCcHcr?=
 =?utf-8?B?T1NPdnFJbER5MHZoQ2VXUnpIVFUxMVREU3l2SUtkS3o0bFhGcmI0WDFCQ3JX?=
 =?utf-8?B?aEFpTHJmdnhwYzh3dWlvOFdTTlhSbUYzMnZrUkFtbC9mS3V3TXNOejhHaVJ4?=
 =?utf-8?B?ZGVwS1pMU3pMS1dKNm53NXNMbjRzUTJLc0pmVGUxK0RVMmxyeE9UdHA4Y0lt?=
 =?utf-8?B?eDFTSjNBS09vbGRVbis1NTR5R0lYbnpJd29jU293RlJPQklvV3l1SUpVRzQx?=
 =?utf-8?B?bktGbXc4bHJsM3JUcGVacHhKMTZPZ3pUT1ExQ2JHME5EUkU2dVlsWGRmaW1X?=
 =?utf-8?B?SXlpY2xhTjNoKzhVZFZDRDFJZ0VDU1ozbkViTGJtdzIrdHlYM2dxa244UFF0?=
 =?utf-8?B?MHpseGJpdStHc1pSR2VjYTlqZVdkLzhhQkFvR1BYZ0t6UkoyOU5pSjVnMnFQ?=
 =?utf-8?B?YVVnUm5ZaFZwUnB5ZUNHUGppb3drQkNOK3A5NGJkZWxVMWdXQ0tURlZ5VitK?=
 =?utf-8?B?eUFGRnZoYXFTRk9KOXUvS3l1YnRITjZsblRJSW42dEhUY0cwNDhFTTJtU2Zi?=
 =?utf-8?B?THc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c6beffdc-0cb2-45c2-7007-08dbb3a856d9
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2023 15:53:00.2473 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1517h0Ehrp36vLb6cydpv4iqgcvnW2i31//sbMQ+Ff0uew28POFHox4+bRpOIpofKPMNvQns1wEFJfqb8UrIoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5478
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 10/29] drm/i915/xe2lpd: Move registers to
 PICA
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

Quoting Lucas De Marchi (2023-09-12 01:48:18-03:00)
>Some registers for DDI A/B moved to PICA and now follow the same format
>as the ones for the PORT_TC ports. The wrapper here deals with 2 issues:
>
>        - Share the implementation between xe2lpd and previous
>          platforms: there are minor layout changes, it's mostly the
>          register location that changed
>        - Handle offsets after TC ports
>
>v2:
>  - Explain better the trick to use just the second range (Matt Roper)
>  - Add missing conversions after rebase (Matt Roper)
>  - Use macro instead of inline function, avoiding includes in the
>    header (Jani)
>  - Prefix old macros with underscore so they don't get used by mistake,
>    and name the new ones using the previous names
>v2: Use the same logic for the recently-introduced XELPDP_PORT_MSGBUS_TIME=
R
>    (Gustavo)

s/v2/v3/ when applying this?

Gustavo Sousa

>
>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 85 ++++++++++---------
> .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 63 ++++++++++++--
> drivers/gpu/drm/i915/display/intel_ddi.c      | 20 +++--
> drivers/gpu/drm/i915/display/intel_tc.c       | 16 ++--
> 4 files changed, 120 insertions(+), 64 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/dr=
m/i915/display/intel_cx0_phy.c
>index e6d3027c821d..33dd67332a4e 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -100,7 +100,7 @@ static void intel_cx0_phy_transaction_end(struct intel=
_encoder *encoder, intel_w
> static void intel_clear_response_ready_flag(struct drm_i915_private *i915=
,
>                                             enum port port, int lane)
> {
>-        intel_de_rmw(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane),
>+        intel_de_rmw(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(i915, port, lane=
),
>                      0, XELPDP_PORT_P2M_RESPONSE_READY | XELPDP_PORT_P2M_=
ERROR_SET);
> }
>=20
>@@ -108,10 +108,10 @@ static void intel_cx0_bus_reset(struct drm_i915_priv=
ate *i915, enum port port, i
> {
>         enum phy phy =3D intel_port_to_phy(i915, port);
>=20
>-        intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
>+        intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane)=
,
>                        XELPDP_PORT_M2P_TRANSACTION_RESET);
>=20
>-        if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port=
, lane),
>+        if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915=
, port, lane),
>                                     XELPDP_PORT_M2P_TRANSACTION_RESET,
>                                     XELPDP_MSGBUS_TIMEOUT_SLOW)) {
>                 drm_err_once(&i915->drm, "Failed to bring PHY %c to idle.=
\n", phy_name(phy));
>@@ -133,7 +133,7 @@ static void intel_cx0_bus_check_and_bump_timer(struct =
drm_i915_private *i915,
>         u32 val;
>         u32 timer_val;
>=20
>-        reg =3D XELPDP_PORT_MSGBUS_TIMER(port, lane);
>+        reg =3D XELPDP_PORT_MSGBUS_TIMER(i915, port, lane);
>         val =3D intel_de_read(i915, reg);
>=20
>         if (!(val & XELPDP_PORT_MSGBUS_TIMER_TIMED_OUT)) {
>@@ -163,7 +163,7 @@ static int intel_cx0_wait_for_ack(struct drm_i915_priv=
ate *i915, enum port port,
>         enum phy phy =3D intel_port_to_phy(i915, port);
>=20
>         if (__intel_de_wait_for_register(i915,
>-                                         XELPDP_PORT_P2M_MSGBUS_STATUS(po=
rt, lane),
>+                                         XELPDP_PORT_P2M_MSGBUS_STATUS(i9=
15, port, lane),
>                                          XELPDP_PORT_P2M_RESPONSE_READY,
>                                          XELPDP_PORT_P2M_RESPONSE_READY,
>                                          XELPDP_MSGBUS_TIMEOUT_FAST_US,
>@@ -199,7 +199,7 @@ static int __intel_cx0_read_once(struct drm_i915_priva=
te *i915, enum port port,
>         int ack;
>         u32 val;
>=20
>-        if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port=
, lane),
>+        if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915=
, port, lane),
>                                     XELPDP_PORT_M2P_TRANSACTION_PENDING,
>                                     XELPDP_MSGBUS_TIMEOUT_SLOW)) {
>                 drm_dbg_kms(&i915->drm,
>@@ -208,7 +208,7 @@ static int __intel_cx0_read_once(struct drm_i915_priva=
te *i915, enum port port,
>                 return -ETIMEDOUT;
>         }
>=20
>-        intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
>+        intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane)=
,
>                        XELPDP_PORT_M2P_TRANSACTION_PENDING |
>                        XELPDP_PORT_M2P_COMMAND_READ |
>                        XELPDP_PORT_M2P_ADDRESS(addr));
>@@ -259,7 +259,7 @@ static int __intel_cx0_write_once(struct drm_i915_priv=
ate *i915, enum port port,
>         int ack;
>         u32 val;
>=20
>-        if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port=
, lane),
>+        if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915=
, port, lane),
>                                     XELPDP_PORT_M2P_TRANSACTION_PENDING,
>                                     XELPDP_MSGBUS_TIMEOUT_SLOW)) {
>                 drm_dbg_kms(&i915->drm,
>@@ -268,14 +268,14 @@ static int __intel_cx0_write_once(struct drm_i915_pr=
ivate *i915, enum port port,
>                 return -ETIMEDOUT;
>         }
>=20
>-        intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
>+        intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane)=
,
>                        XELPDP_PORT_M2P_TRANSACTION_PENDING |
>                        (committed ? XELPDP_PORT_M2P_COMMAND_WRITE_COMMITT=
ED :
>                                     XELPDP_PORT_M2P_COMMAND_WRITE_UNCOMMI=
TTED) |
>                        XELPDP_PORT_M2P_DATA(data) |
>                        XELPDP_PORT_M2P_ADDRESS(addr));
>=20
>-        if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port=
, lane),
>+        if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915=
, port, lane),
>                                     XELPDP_PORT_M2P_TRANSACTION_PENDING,
>                                     XELPDP_MSGBUS_TIMEOUT_SLOW)) {
>                 drm_dbg_kms(&i915->drm,
>@@ -288,7 +288,7 @@ static int __intel_cx0_write_once(struct drm_i915_priv=
ate *i915, enum port port,
>                 ack =3D intel_cx0_wait_for_ack(i915, port, XELPDP_PORT_P2=
M_COMMAND_WRITE_ACK, lane, &val);
>                 if (ack < 0)
>                         return ack;
>-        } else if ((intel_de_read(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(por=
t, lane)) &
>+        } else if ((intel_de_read(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(i91=
5, port, lane)) &
>                     XELPDP_PORT_P2M_ERROR_SET)) {
>                 drm_dbg_kms(&i915->drm,
>                             "PHY %c Error occurred during write command.\=
n", phy_name(phy));
>@@ -2470,7 +2470,8 @@ static void intel_program_port_clock_ctl(struct inte=
l_encoder *encoder,
>         struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>         u32 val =3D 0;
>=20
>-        intel_de_rmw(i915, XELPDP_PORT_BUF_CTL1(encoder->port), XELPDP_PO=
RT_REVERSAL,
>+        intel_de_rmw(i915, XELPDP_PORT_BUF_CTL1(i915, encoder->port),
>+                     XELPDP_PORT_REVERSAL,
>                      lane_reversal ? XELPDP_PORT_REVERSAL : 0);
>=20
>         if (lane_reversal)
>@@ -2490,7 +2491,7 @@ static void intel_program_port_clock_ctl(struct inte=
l_encoder *encoder,
>         else
>                 val |=3D crtc_state->cx0pll_state.ssc_enabled ? XELPDP_SS=
C_ENABLE_PLLB : 0;
>=20
>-        intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
>+        intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
>                      XELPDP_LANE1_PHY_CLOCK_SELECT | XELPDP_FORWARD_CLOCK=
_UNGATE |
>                      XELPDP_DDI_CLOCK_SELECT_MASK | XELPDP_SSC_ENABLE_PLL=
A |
>                      XELPDP_SSC_ENABLE_PLLB, val);
>@@ -2523,15 +2524,16 @@ static void intel_cx0_powerdown_change_sequence(st=
ruct drm_i915_private *i915,
>                                                 u8 lane_mask, u8 state)
> {
>         enum phy phy =3D intel_port_to_phy(i915, port);
>+        i915_reg_t buf_ctl2_reg =3D XELPDP_PORT_BUF_CTL2(i915, port);
>         int lane;
>=20
>-        intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
>+        intel_de_rmw(i915, buf_ctl2_reg,
>                      intel_cx0_get_powerdown_state(INTEL_CX0_BOTH_LANES, =
XELPDP_LANE_POWERDOWN_NEW_STATE_MASK),
>                      intel_cx0_get_powerdown_state(lane_mask, state));
>=20
>         /* Wait for pending transactions.*/
>         for_each_cx0_lane_in_mask(lane_mask, lane)
>-                if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_=
CTL(port, lane),
>+                if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_=
CTL(i915, port, lane),
>                                             XELPDP_PORT_M2P_TRANSACTION_P=
ENDING,
>                                             XELPDP_MSGBUS_TIMEOUT_SLOW)) =
{
>                         drm_dbg_kms(&i915->drm,
>@@ -2540,12 +2542,12 @@ static void intel_cx0_powerdown_change_sequence(st=
ruct drm_i915_private *i915,
>                         intel_cx0_bus_reset(i915, port, lane);
>                 }
>=20
>-        intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
>+        intel_de_rmw(i915, buf_ctl2_reg,
>                      intel_cx0_get_powerdown_update(INTEL_CX0_BOTH_LANES)=
,
>                      intel_cx0_get_powerdown_update(lane_mask));
>=20
>         /* Update Timeout Value */
>-        if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL2(port)=
,
>+        if (__intel_de_wait_for_register(i915, buf_ctl2_reg,
>                                          intel_cx0_get_powerdown_update(l=
ane_mask), 0,
>                                          XELPDP_PORT_POWERDOWN_UPDATE_TIM=
EOUT_US, 0, NULL))
>                 drm_warn(&i915->drm, "PHY %c failed to bring out of Lane =
reset after %dus.\n",
>@@ -2554,10 +2556,10 @@ static void intel_cx0_powerdown_change_sequence(st=
ruct drm_i915_private *i915,
>=20
> static void intel_cx0_setup_powerdown(struct drm_i915_private *i915, enum=
 port port)
> {
>-        intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
>+        intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(i915, port),
>                      XELPDP_POWER_STATE_READY_MASK,
>                      XELPDP_POWER_STATE_READY(CX0_P2_STATE_READY));
>-        intel_de_rmw(i915, XELPDP_PORT_BUF_CTL3(port),
>+        intel_de_rmw(i915, XELPDP_PORT_BUF_CTL3(i915, port),
>                      XELPDP_POWER_STATE_ACTIVE_MASK |
>                      XELPDP_PLL_LANE_STAGGERING_DELAY_MASK,
>                      XELPDP_POWER_STATE_ACTIVE(CX0_P0_STATE_ACTIVE) |
>@@ -2602,28 +2604,28 @@ static void intel_cx0_phy_lane_reset(struct drm_i9=
15_private *i915,
>                                            XELPDP_LANE_PHY_CURRENT_STATUS=
(1))
>                                         : XELPDP_LANE_PHY_CURRENT_STATUS(=
0);
>=20
>-        if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL1(port)=
,
>+        if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL1(i915,=
 port),
>                                          XELPDP_PORT_BUF_SOC_PHY_READY,
>                                          XELPDP_PORT_BUF_SOC_PHY_READY,
>                                          XELPDP_PORT_BUF_SOC_READY_TIMEOU=
T_US, 0, NULL))
>                 drm_warn(&i915->drm, "PHY %c failed to bring out of SOC r=
eset after %dus.\n",
>                          phy_name(phy), XELPDP_PORT_BUF_SOC_READY_TIMEOUT=
_US);
>=20
>-        intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
>+        intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(i915, port),
>                      XELPDP_LANE_PIPE_RESET(0) | XELPDP_LANE_PIPE_RESET(1=
),
>                      lane_pipe_reset);
>=20
>-        if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL2(port)=
,
>+        if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL2(i915,=
 port),
>                                          lane_phy_current_status, lane_ph=
y_current_status,
>                                          XELPDP_PORT_RESET_START_TIMEOUT_=
US, 0, NULL))
>                 drm_warn(&i915->drm, "PHY %c failed to bring out of Lane =
reset after %dus.\n",
>                          phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_U=
S);
>=20
>-        intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(port),
>+        intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, port),
>                      intel_cx0_get_pclk_refclk_request(owned_lane_mask),
>                      intel_cx0_get_pclk_refclk_request(lane_mask));
>=20
>-        if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(port=
),
>+        if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(i915=
, port),
>                                          intel_cx0_get_pclk_refclk_ack(ow=
ned_lane_mask),
>                                          intel_cx0_get_pclk_refclk_ack(la=
ne_mask),
>                                          XELPDP_REFCLK_ENABLE_TIMEOUT_US,=
 0, NULL))
>@@ -2634,9 +2636,10 @@ static void intel_cx0_phy_lane_reset(struct drm_i91=
5_private *i915,
>                                             CX0_P2_STATE_RESET);
>         intel_cx0_setup_powerdown(i915, port);
>=20
>-        intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port), lane_pipe_reset, 0=
);
>+        intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(i915, port), lane_pipe_re=
set, 0);
>=20
>-        if (intel_de_wait_for_clear(i915, XELPDP_PORT_BUF_CTL2(port), lan=
e_phy_current_status,
>+        if (intel_de_wait_for_clear(i915, XELPDP_PORT_BUF_CTL2(i915, port=
),
>+                                    lane_phy_current_status,
>                                     XELPDP_PORT_RESET_END_TIMEOUT))
>                 drm_warn(&i915->drm, "PHY %c failed to bring out of Lane =
reset after %dms.\n",
>                          phy_name(phy), XELPDP_PORT_RESET_END_TIMEOUT);
>@@ -2765,12 +2768,12 @@ static void intel_cx0pll_enable(struct intel_encod=
er *encoder,
>          * 8. Set PORT_CLOCK_CTL register PCLK PLL Request
>          * LN<Lane for maxPCLK> to "1" to enable PLL.
>          */
>-        intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
>+        intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
>                      intel_cx0_get_pclk_pll_request(INTEL_CX0_BOTH_LANES)=
,
>                      intel_cx0_get_pclk_pll_request(maxpclk_lane));
>=20
>         /* 9. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK> =
=3D=3D "1". */
>-        if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(enco=
der->port),
>+        if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(i915=
, encoder->port),
>                                          intel_cx0_get_pclk_pll_ack(INTEL=
_CX0_BOTH_LANES),
>                                          intel_cx0_get_pclk_pll_ack(maxpc=
lk_lane),
>                                          XELPDP_PCLK_PLL_ENABLE_TIMEOUT_U=
S, 0, NULL))
>@@ -2790,7 +2793,7 @@ int intel_mtl_tbt_calc_port_clock(struct intel_encod=
er *encoder)
> {
>         struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>         u32 clock;
>-        u32 val =3D intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(encoder->po=
rt));
>+        u32 val =3D intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(i915, encod=
er->port));
>=20
>         clock =3D REG_FIELD_GET(XELPDP_DDI_CLOCK_SELECT_MASK, val);
>=20
>@@ -2843,11 +2846,11 @@ static void intel_mtl_tbt_pll_enable(struct intel_=
encoder *encoder,
>          */
>         val |=3D XELPDP_DDI_CLOCK_SELECT(intel_mtl_tbt_clock_select(i915,=
 crtc_state->port_clock));
>         val |=3D XELPDP_FORWARD_CLOCK_UNGATE;
>-        intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
>+        intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
>                      XELPDP_DDI_CLOCK_SELECT_MASK | XELPDP_FORWARD_CLOCK_=
UNGATE, val);
>=20
>         /* 2. Read back PORT_CLOCK_CTL REGISTER */
>-        val =3D intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(encoder->port))=
;
>+        val =3D intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->=
port));
>=20
>         /*
>          * 3. Follow the Display Voltage Frequency Switching - Sequence
>@@ -2858,10 +2861,10 @@ static void intel_mtl_tbt_pll_enable(struct intel_=
encoder *encoder,
>          * 4. Set PORT_CLOCK_CTL register TBT CLOCK Request to "1" to ena=
ble PLL.
>          */
>         val |=3D XELPDP_TBT_CLOCK_REQUEST;
>-        intel_de_write(i915, XELPDP_PORT_CLOCK_CTL(encoder->port), val);
>+        intel_de_write(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port), =
val);
>=20
>         /* 5. Poll on PORT_CLOCK_CTL TBT CLOCK Ack =3D=3D "1". */
>-        if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(enco=
der->port),
>+        if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(i915=
, encoder->port),
>                                          XELPDP_TBT_CLOCK_ACK,
>                                          XELPDP_TBT_CLOCK_ACK,
>                                          100, 0, NULL))
>@@ -2913,7 +2916,7 @@ static void intel_cx0pll_disable(struct intel_encode=
r *encoder)
>          * 3. Set PORT_CLOCK_CTL register PCLK PLL Request LN<Lane for ma=
xPCLK>
>          * to "0" to disable PLL.
>          */
>-        intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
>+        intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
>                      intel_cx0_get_pclk_pll_request(INTEL_CX0_BOTH_LANES)=
 |
>                      intel_cx0_get_pclk_refclk_request(INTEL_CX0_BOTH_LAN=
ES), 0);
>=20
>@@ -2923,7 +2926,7 @@ static void intel_cx0pll_disable(struct intel_encode=
r *encoder)
>         /*
>          * 5. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK**> =
=3D=3D "0".
>          */
>-        if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(enco=
der->port),
>+        if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(i915=
, encoder->port),
>                                          intel_cx0_get_pclk_pll_ack(INTEL=
_CX0_BOTH_LANES) |
>                                          intel_cx0_get_pclk_refclk_ack(IN=
TEL_CX0_BOTH_LANES), 0,
>                                          XELPDP_PCLK_PLL_DISABLE_TIMEOUT_=
US, 0, NULL))
>@@ -2936,9 +2939,9 @@ static void intel_cx0pll_disable(struct intel_encode=
r *encoder)
>          */
>=20
>         /* 7. Program PORT_CLOCK_CTL register to disable and gate clocks.=
 */
>-        intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
>+        intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
>                      XELPDP_DDI_CLOCK_SELECT_MASK, 0);
>-        intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
>+        intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
>                      XELPDP_FORWARD_CLOCK_UNGATE, 0);
>=20
>         intel_cx0_phy_transaction_end(encoder, wakeref);
>@@ -2957,11 +2960,11 @@ static void intel_mtl_tbt_pll_disable(struct intel=
_encoder *encoder)
>         /*
>          * 2. Set PORT_CLOCK_CTL register TBT CLOCK Request to "0" to dis=
able PLL.
>          */
>-        intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
>+        intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
>                      XELPDP_TBT_CLOCK_REQUEST, 0);
>=20
>         /* 3. Poll on PORT_CLOCK_CTL TBT CLOCK Ack =3D=3D "0". */
>-        if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(enco=
der->port),
>+        if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(i915=
, encoder->port),
>                                          XELPDP_TBT_CLOCK_ACK, 0, 10, 0, =
NULL))
>                 drm_warn(&i915->drm, "[ENCODER:%d:%s][%c] PHY PLL not unl=
ocked after 10us.\n",
>                          encoder->base.base.id, encoder->base.name, phy_n=
ame(phy));
>@@ -2974,7 +2977,7 @@ static void intel_mtl_tbt_pll_disable(struct intel_e=
ncoder *encoder)
>         /*
>          * 5. Program PORT CLOCK CTRL register to disable and gate clocks
>          */
>-        intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
>+        intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
>                      XELPDP_DDI_CLOCK_SELECT_MASK |
>                      XELPDP_FORWARD_CLOCK_UNGATE, 0);
>=20
>@@ -3001,7 +3004,7 @@ intel_mtl_port_pll_type(struct intel_encoder *encode=
r,
>          * TODO: Determine the PLL type from the SW state, once MTL PLL
>          * handling is done via the standard shared DPLL framework.
>          */
>-        u32 val =3D intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(encoder->po=
rt));
>+        u32 val =3D intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(i915, encod=
er->port));
>         u32 clock =3D REG_FIELD_GET(XELPDP_DDI_CLOCK_SELECT_MASK, val);
>=20
>         if (clock =3D=3D XELPDP_DDI_CLOCK_SELECT_MAXPCLK ||
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/g=
pu/drm/i915/display/intel_cx0_phy_regs.h
>index b2db4cc366d6..ff7f10d91e50 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>@@ -7,16 +7,39 @@
> #define __INTEL_CX0_PHY_REGS_H__
>=20
> #include "i915_reg_defs.h"
>+#include "intel_display_limits.h"
>+
>+/*
>+ * Wrapper macro to convert from port number to the index used in some of=
 the
>+ * registers. For Display version 20 and above it converts the port numbe=
r to a
>+ * single range, starting with the TC offsets. When used together with
>+ * _PICK_EVEN_2RANGES(idx, PORT_TC1, ...), this single range will be the =
second
>+ * range. Example:
>+ *
>+ * PORT_TC1 -> PORT_TC1
>+ * PORT_TC2 -> PORT_TC2
>+ * PORT_TC3 -> PORT_TC3
>+ * PORT_TC4 -> PORT_TC4
>+ * PORT_A   -> PORT_TC4 + 1
>+ * PORT_B   -> PORT_TC4 + 2
>+ * ...
>+ */
>+#define __xe2lpd_port_idx(port)                                          =
      \
>+        (port >=3D PORT_TC1 ? port : PORT_TC4 + 1 + port - PORT_A)
>=20
> #define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A                0x64040
> #define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B                0x64140
> #define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1                0x16F240
> #define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2                0x16F440
>-#define XELPDP_PORT_M2P_MSGBUS_CTL(port, lane)                _MMIO(_PICK=
_EVEN_2RANGES(port, PORT_TC1, \
>+#define _XELPDP_PORT_M2P_MSGBUS_CTL(idx, lane)                _MMIO(_PICK=
_EVEN_2RANGES(idx, PORT_TC1, \
>                                                                          =
        _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \
>                                                                          =
        _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \
>                                                                          =
        _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \
>                                                                          =
        _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2) + (lane) * 4)
>+#define XELPDP_PORT_M2P_MSGBUS_CTL(i915__, port, lane)                   =
             \
>+        (DISPLAY_VER(i915__) >=3D 20 ?                                   =
             \
>+         _XELPDP_PORT_M2P_MSGBUS_CTL(__xe2lpd_port_idx(port), lane) :    =
            \
>+         _XELPDP_PORT_M2P_MSGBUS_CTL(port, lane))
> #define   XELPDP_PORT_M2P_TRANSACTION_PENDING                REG_BIT(31)
> #define   XELPDP_PORT_M2P_COMMAND_TYPE_MASK                REG_GENMASK(30=
, 27)
> #define   XELPDP_PORT_M2P_COMMAND_WRITE_UNCOMMITTED        REG_FIELD_PREP=
(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x1)
>@@ -27,11 +50,16 @@
> #define   XELPDP_PORT_M2P_TRANSACTION_RESET                REG_BIT(15)
> #define   XELPDP_PORT_M2P_ADDRESS_MASK                        REG_GENMASK=
(11, 0)
> #define   XELPDP_PORT_M2P_ADDRESS(val)                        REG_FIELD_P=
REP(XELPDP_PORT_M2P_ADDRESS_MASK, val)
>-#define XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane)        _MMIO(_PICK_EVEN=
_2RANGES(port, PORT_TC1, \
>+
>+#define _XELPDP_PORT_P2M_MSGBUS_STATUS(idx, lane)        _MMIO(_PICK_EVEN=
_2RANGES(idx, PORT_TC1, \
>                                                                          =
        _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \
>                                                                          =
        _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \
>                                                                          =
        _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \
>                                                                          =
        _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2) + (lane) * 4 + 8)
>+#define XELPDP_PORT_P2M_MSGBUS_STATUS(i915__, port, lane)                =
        \
>+        (DISPLAY_VER(i915__) >=3D 20 ?                                   =
             \
>+         _XELPDP_PORT_P2M_MSGBUS_STATUS(__xe2lpd_port_idx(port), lane) : =
       \
>+         _XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane))
> #define   XELPDP_PORT_P2M_RESPONSE_READY                REG_BIT(31)
> #define   XELPDP_PORT_P2M_COMMAND_TYPE_MASK                REG_GENMASK(30=
, 27)
> #define   XELPDP_PORT_P2M_COMMAND_READ_ACK                0x4
>@@ -54,11 +82,15 @@
> #define _XELPDP_PORT_BUF_CTL1_LN0_B                        0x64104
> #define _XELPDP_PORT_BUF_CTL1_LN0_USBC1                        0x16F200
> #define _XELPDP_PORT_BUF_CTL1_LN0_USBC2                        0x16F400
>-#define XELPDP_PORT_BUF_CTL1(port)                        _MMIO(_PICK_EVE=
N_2RANGES(port, PORT_TC1, \
>+#define _XELPDP_PORT_BUF_CTL1(idx)                        _MMIO(_PICK_EVE=
N_2RANGES(idx, PORT_TC1, \
>                                                                          =
        _XELPDP_PORT_BUF_CTL1_LN0_A, \
>                                                                          =
        _XELPDP_PORT_BUF_CTL1_LN0_B, \
>                                                                          =
        _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
>                                                                          =
        _XELPDP_PORT_BUF_CTL1_LN0_USBC2))
>+#define XELPDP_PORT_BUF_CTL1(i915__, port)                               =
         \
>+        (DISPLAY_VER(i915__) >=3D 20 ?                                   =
             \
>+         _XELPDP_PORT_BUF_CTL1(__xe2lpd_port_idx(port)) :                =
        \
>+         _XELPDP_PORT_BUF_CTL1(port))
> #define   XELPDP_PORT_BUF_D2D_LINK_ENABLE                REG_BIT(29)
> #define   XELPDP_PORT_BUF_D2D_LINK_STATE                REG_BIT(28)
> #define   XELPDP_PORT_BUF_SOC_PHY_READY                        REG_BIT(24=
)
>@@ -75,12 +107,15 @@
> #define   XELPDP_PORT_WIDTH_MASK                        REG_GENMASK(3, 1)
> #define   XELPDP_PORT_WIDTH(val)                        REG_FIELD_PREP(XE=
LPDP_PORT_WIDTH_MASK, val)
>=20
>-#define XELPDP_PORT_BUF_CTL2(port)                        _MMIO(_PICK_EVE=
N_2RANGES(port, PORT_TC1, \
>+#define _XELPDP_PORT_BUF_CTL2(idx)                        _MMIO(_PICK_EVE=
N_2RANGES(idx, PORT_TC1, \
>                                                                          =
        _XELPDP_PORT_BUF_CTL1_LN0_A, \
>                                                                          =
        _XELPDP_PORT_BUF_CTL1_LN0_B, \
>                                                                          =
        _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
>                                                                          =
        _XELPDP_PORT_BUF_CTL1_LN0_USBC2) + 4)
>-
>+#define XELPDP_PORT_BUF_CTL2(i915__, port)                               =
         \
>+        (DISPLAY_VER(i915__) >=3D 20 ?                                   =
             \
>+         _XELPDP_PORT_BUF_CTL2(__xe2lpd_port_idx(port)) :                =
        \
>+         _XELPDP_PORT_BUF_CTL2(port))
> #define   XELPDP_LANE_PIPE_RESET(lane)                        _PICK(lane,=
 REG_BIT(31), REG_BIT(30))
> #define   XELPDP_LANE_PHY_CURRENT_STATUS(lane)                _PICK(lane,=
 REG_BIT(29), REG_BIT(28))
> #define   XELPDP_LANE_POWERDOWN_UPDATE(lane)                _PICK(lane, R=
EG_BIT(25), REG_BIT(24))
>@@ -95,11 +130,15 @@
> #define   XELPDP_POWER_STATE_READY_MASK                        REG_GENMAS=
K(7, 4)
> #define   XELPDP_POWER_STATE_READY(val)                        REG_FIELD_=
PREP(XELPDP_POWER_STATE_READY_MASK, val)
>=20
>-#define XELPDP_PORT_BUF_CTL3(port)                        _MMIO(_PICK_EVE=
N_2RANGES(port, PORT_TC1, \
>+#define _XELPDP_PORT_BUF_CTL3(idx)                        _MMIO(_PICK_EVE=
N_2RANGES(idx, PORT_TC1, \
>                                                                          =
        _XELPDP_PORT_BUF_CTL1_LN0_A, \
>                                                                          =
        _XELPDP_PORT_BUF_CTL1_LN0_B, \
>                                                                          =
        _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
>                                                                          =
        _XELPDP_PORT_BUF_CTL1_LN0_USBC2) + 8)
>+#define XELPDP_PORT_BUF_CTL3(i915__, port)                               =
         \
>+        (DISPLAY_VER(i915__) >=3D 20 ?                                   =
             \
>+         _XELPDP_PORT_BUF_CTL3(__xe2lpd_port_idx(port)) :                =
        \
>+         _XELPDP_PORT_BUF_CTL3(port))
> #define   XELPDP_PLL_LANE_STAGGERING_DELAY_MASK                REG_GENMAS=
K(15, 8)
> #define   XELPDP_PLL_LANE_STAGGERING_DELAY(val)                REG_FIELD_=
PREP(XELPDP_PLL_LANE_STAGGERING_DELAY_MASK, val)
> #define   XELPDP_POWER_STATE_ACTIVE_MASK                REG_GENMASK(3, 0)
>@@ -114,11 +153,15 @@
> #define _XELPDP_PORT_MSGBUS_TIMER_LN0_B                        0x641d8
> #define _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC1                0x16f258
> #define _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC2                0x16f458
>-#define XELPDP_PORT_MSGBUS_TIMER(port, lane)                _MMIO(_PICK_E=
VEN_2RANGES(port, PORT_TC1, \
>+#define _XELPDP_PORT_MSGBUS_TIMER(port, lane)                _MMIO(_PICK_=
EVEN_2RANGES(port, PORT_TC1, \
>                                                                          =
        _XELPDP_PORT_MSGBUS_TIMER_LN0_A, \
>                                                                          =
        _XELPDP_PORT_MSGBUS_TIMER_LN0_B, \
>                                                                          =
        _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC1, \
>                                                                          =
        _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC2) + (lane) * 4)
>+#define XELPDP_PORT_MSGBUS_TIMER(i915__, port, lane)                     =
           \
>+        (DISPLAY_VER(i915__) >=3D 20 ?                                   =
             \
>+         _XELPDP_PORT_MSGBUS_TIMER(__xe2lpd_port_idx(port), lane) :      =
          \
>+         _XELPDP_PORT_MSGBUS_TIMER(port, lane))
> #define   XELPDP_PORT_MSGBUS_TIMER_TIMED_OUT                REG_BIT(31)
> #define   XELPDP_PORT_MSGBUS_TIMER_VAL_MASK                REG_GENMASK(23=
, 0)
> #define   XELPDP_PORT_MSGBUS_TIMER_VAL(val)                REG_FIELD_PREP=
(XELPDP_PORT_MSGBUS_TIMER_VAL_MASK, val)
>@@ -127,11 +170,15 @@
> #define _XELPDP_PORT_CLOCK_CTL_B                        0x641E0
> #define _XELPDP_PORT_CLOCK_CTL_USBC1                        0x16F260
> #define _XELPDP_PORT_CLOCK_CTL_USBC2                        0x16F460
>-#define XELPDP_PORT_CLOCK_CTL(port)                        _MMIO(_PICK_EV=
EN_2RANGES(port, PORT_TC1, \
>+#define _XELPDP_PORT_CLOCK_CTL(idx)                        _MMIO(_PICK_EV=
EN_2RANGES(idx, PORT_TC1, \
>                                                                          =
        _XELPDP_PORT_CLOCK_CTL_A, \
>                                                                          =
        _XELPDP_PORT_CLOCK_CTL_B, \
>                                                                          =
        _XELPDP_PORT_CLOCK_CTL_USBC1, \
>                                                                          =
        _XELPDP_PORT_CLOCK_CTL_USBC2))
>+#define XELPDP_PORT_CLOCK_CTL(i915__, port)                              =
          \
>+        (DISPLAY_VER(i915__) >=3D 20 ?                                   =
             \
>+         _XELPDP_PORT_CLOCK_CTL(__xe2lpd_port_idx(port)) :               =
         \
>+         _XELPDP_PORT_CLOCK_CTL(port))
> #define   XELPDP_LANE_PCLK_PLL_REQUEST(lane)                REG_BIT(31 - =
((lane) * 4))
> #define   XELPDP_LANE_PCLK_PLL_ACK(lane)                REG_BIT(30 - ((la=
ne) * 4))
> #define   XELPDP_LANE_PCLK_REFCLK_REQUEST(lane)                REG_BIT(29=
 - ((lane) * 4))
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i9=
15/display/intel_ddi.c
>index 53d8f13f8471..2509785daf7b 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>@@ -177,7 +177,7 @@ static void mtl_wait_ddi_buf_idle(struct drm_i915_priv=
ate *i915, enum port port)
>         int ret;
>=20
>         /* FIXME: find out why Bspec's 100us timeout is too short */
>-        ret =3D wait_for_us((intel_de_read(i915, XELPDP_PORT_BUF_CTL1(por=
t)) &
>+        ret =3D wait_for_us((intel_de_read(i915, XELPDP_PORT_BUF_CTL1(i91=
5, port)) &
>                            XELPDP_PORT_BUF_PHY_IDLE), 10000);
>         if (ret)
>                 drm_err(&i915->drm, "Timeout waiting for DDI BUF %c to ge=
t idle\n",
>@@ -225,7 +225,9 @@ static void intel_wait_ddi_buf_active(struct drm_i915_=
private *dev_priv,
>         }
>=20
>         if (DISPLAY_VER(dev_priv) >=3D 14)
>-                ret =3D _wait_for(!(intel_de_read(dev_priv, XELPDP_PORT_B=
UF_CTL1(port)) & XELPDP_PORT_BUF_PHY_IDLE),
>+                ret =3D _wait_for(!(intel_de_read(dev_priv,
>+                                                XELPDP_PORT_BUF_CTL1(dev_=
priv, port)) &
>+                                  XELPDP_PORT_BUF_PHY_IDLE),
>                                 timeout_us, 10, 10);
>         else
>                 ret =3D _wait_for(!(intel_de_read(dev_priv, DDI_BUF_CTL(p=
ort)) & DDI_BUF_IS_IDLE),
>@@ -2366,7 +2368,7 @@ mtl_ddi_enable_d2d(struct intel_encoder *encoder)
>                 wait_bits =3D XE2LPD_DDI_BUF_D2D_LINK_STATE;
>                 dig_port->saved_port_bits |=3D XE2LPD_DDI_BUF_D2D_LINK_EN=
ABLE;
>         } else {
>-                reg =3D XELPDP_PORT_BUF_CTL1(port);
>+                reg =3D XELPDP_PORT_BUF_CTL1(dev_priv, port);
>                 set_bits =3D XELPDP_PORT_BUF_D2D_LINK_ENABLE;
>                 wait_bits =3D XELPDP_PORT_BUF_D2D_LINK_STATE;
>         }
>@@ -2386,7 +2388,7 @@ static void mtl_port_buf_ctl_program(struct intel_en=
coder *encoder,
>         enum port port =3D encoder->port;
>         u32 val;
>=20
>-        val =3D intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port));
>+        val =3D intel_de_read(i915, XELPDP_PORT_BUF_CTL1(i915, port));
>         val &=3D ~XELPDP_PORT_WIDTH_MASK;
>         val |=3D XELPDP_PORT_WIDTH(mtl_get_port_width(crtc_state->lane_co=
unt));
>=20
>@@ -2399,7 +2401,7 @@ static void mtl_port_buf_ctl_program(struct intel_en=
coder *encoder,
>         if (dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL)
>                 val |=3D XELPDP_PORT_REVERSAL;
>=20
>-        intel_de_write(i915, XELPDP_PORT_BUF_CTL1(port), val);
>+        intel_de_write(i915, XELPDP_PORT_BUF_CTL1(i915, port), val);
> }
>=20
> static void mtl_port_buf_ctl_io_selection(struct intel_encoder *encoder)
>@@ -2410,7 +2412,7 @@ static void mtl_port_buf_ctl_io_selection(struct int=
el_encoder *encoder)
>=20
>         val =3D intel_tc_port_in_tbt_alt_mode(dig_port) ?
>               XELPDP_PORT_BUF_IO_SELECT_TBT : 0;
>-        intel_de_rmw(i915, XELPDP_PORT_BUF_CTL1(encoder->port),
>+        intel_de_rmw(i915, XELPDP_PORT_BUF_CTL1(i915, encoder->port),
>                      XELPDP_PORT_BUF_IO_SELECT_TBT, val);
> }
>=20
>@@ -2830,7 +2832,7 @@ mtl_ddi_disable_d2d_link(struct intel_encoder *encod=
er)
>                 wait_bits =3D XE2LPD_DDI_BUF_D2D_LINK_STATE;
>                 dig_port->saved_port_bits &=3D ~XE2LPD_DDI_BUF_D2D_LINK_E=
NABLE;
>         } else {
>-                reg =3D XELPDP_PORT_BUF_CTL1(port);
>+                reg =3D XELPDP_PORT_BUF_CTL1(dev_priv, port);
>                 clr_bits =3D XELPDP_PORT_BUF_D2D_LINK_ENABLE;
>                 wait_bits =3D XELPDP_PORT_BUF_D2D_LINK_STATE;
>         }
>@@ -2968,7 +2970,7 @@ static void intel_ddi_post_disable_dp(struct intel_a=
tomic_state *state,
>=20
>         /* De-select Thunderbolt */
>         if (DISPLAY_VER(dev_priv) >=3D 14)
>-                intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(encoder->port=
),
>+                intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(dev_priv, enc=
oder->port),
>                              XELPDP_PORT_BUF_IO_SELECT_TBT, 0);
> }
>=20
>@@ -3241,7 +3243,7 @@ static void intel_enable_ddi_hdmi(struct intel_atomi=
c_state *state,
>                 if (dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL)
>                         port_buf |=3D XELPDP_PORT_REVERSAL;
>=20
>-                intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(port),
>+                intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(dev_priv, por=
t),
>                              XELPDP_PORT_WIDTH_MASK | XELPDP_PORT_REVERSA=
L, port_buf);
>=20
>                 dig_port->saved_port_bits |=3D DDI_PORT_WIDTH(lane_count)=
;
>diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i91=
5/display/intel_tc.c
>index 3c94bbcb5497..678693978892 100644
>--- a/drivers/gpu/drm/i915/display/intel_tc.c
>+++ b/drivers/gpu/drm/i915/display/intel_tc.c
>@@ -958,10 +958,11 @@ xelpdp_tc_phy_tcss_power_is_enabled(struct intel_tc_=
port *tc)
> {
>         struct drm_i915_private *i915 =3D tc_to_i915(tc);
>         enum port port =3D tc->dig_port->base.port;
>+        i915_reg_t reg =3D XELPDP_PORT_BUF_CTL1(i915, port);
>=20
>         assert_tc_cold_blocked(tc);
>=20
>-        return intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port)) & XELPDP_T=
CSS_POWER_STATE;
>+        return intel_de_read(i915, reg) & XELPDP_TCSS_POWER_STATE;
> }
>=20
> static bool
>@@ -984,16 +985,17 @@ static void __xelpdp_tc_phy_enable_tcss_power(struct=
 intel_tc_port *tc, bool ena
> {
>         struct drm_i915_private *i915 =3D tc_to_i915(tc);
>         enum port port =3D tc->dig_port->base.port;
>+        i915_reg_t reg =3D XELPDP_PORT_BUF_CTL1(i915, port);
>         u32 val;
>=20
>         assert_tc_cold_blocked(tc);
>=20
>-        val =3D intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port));
>+        val =3D intel_de_read(i915, reg);
>         if (enable)
>                 val |=3D XELPDP_TCSS_POWER_REQUEST;
>         else
>                 val &=3D ~XELPDP_TCSS_POWER_REQUEST;
>-        intel_de_write(i915, XELPDP_PORT_BUF_CTL1(port), val);
>+        intel_de_write(i915, reg, val);
> }
>=20
> static bool xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, boo=
l enable)
>@@ -1020,26 +1022,28 @@ static void xelpdp_tc_phy_take_ownership(struct in=
tel_tc_port *tc, bool take)
> {
>         struct drm_i915_private *i915 =3D tc_to_i915(tc);
>         enum port port =3D tc->dig_port->base.port;
>+        i915_reg_t reg =3D XELPDP_PORT_BUF_CTL1(i915, port);
>         u32 val;
>=20
>         assert_tc_cold_blocked(tc);
>=20
>-        val =3D intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port));
>+        val =3D intel_de_read(i915, reg);
>         if (take)
>                 val |=3D XELPDP_TC_PHY_OWNERSHIP;
>         else
>                 val &=3D ~XELPDP_TC_PHY_OWNERSHIP;
>-        intel_de_write(i915, XELPDP_PORT_BUF_CTL1(port), val);
>+        intel_de_write(i915, reg, val);
> }
>=20
> static bool xelpdp_tc_phy_is_owned(struct intel_tc_port *tc)
> {
>         struct drm_i915_private *i915 =3D tc_to_i915(tc);
>         enum port port =3D tc->dig_port->base.port;
>+        i915_reg_t reg =3D XELPDP_PORT_BUF_CTL1(i915, port);
>=20
>         assert_tc_cold_blocked(tc);
>=20
>-        return intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port)) & XELPDP_T=
C_PHY_OWNERSHIP;
>+        return intel_de_read(i915, reg) & XELPDP_TC_PHY_OWNERSHIP;
> }
>=20
> static void xelpdp_tc_phy_get_hw_state(struct intel_tc_port *tc)
>--=20
>2.40.1
>
