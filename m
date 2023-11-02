Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E186E7DF4D7
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 15:23:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F79F10E8C9;
	Thu,  2 Nov 2023 14:23:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0869010E09D
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 14:23:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698935022; x=1730471022;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:cc:date:message-id:mime-version;
 bh=DL/9Ahyyl2ETNS7nYgJ4yTkQU/e15+ZsGRJ8eFnW/fo=;
 b=oABV2UccHCRNw1LLizcJSo8HEJJ/TrJsDts7khosHUfeXaKr9fyoAV6x
 1xY7nj1CXPYEz+AR0RJxeNjs5gqgobilKWgM/1hoo1aumgkPudKfOjPv2
 POJUc6/3v5wlaUC9RDQsKyNxVN4YHcjVBt9PkiXWT8I3QttH9Ix9t7Qub
 jJdVCTXOgjmrh+ztK9idLruriO6QdgISt5AJQXG9HG9r0MPLmOgaW91KY
 o7k9wvlXNSmm7lJ5KlKhMoEUViL826EaPi+/cduAdffFfccnj3hgt5Jh4
 0qTQXLx3jowz0JWFBJCRpq+xe4DXv6WETw/sno9vDPqFW8R9+3we7mxwK g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="368928762"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="368928762"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 07:23:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="737771116"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="737771116"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Nov 2023 07:23:40 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 2 Nov 2023 07:23:39 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 2 Nov 2023 07:23:38 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 2 Nov 2023 07:23:38 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 2 Nov 2023 07:23:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UL2BbtQ+qWCwIlHAbA2uxGnSW0ohMSwXNuLPCTYeCg16MlvsGg25MU4DpHuRCFtkmbTjKNHNM3GSXULnxw4FfgRQvY2fmq3sTwTZhzFINxPTqT+72+QeCPHfYp+tkTLgr85BLdtfwFBtd0Dn3t5FbhIFH6hj6U+sVQNjQLU+kQg5k2klJnmzcRFfBInXwmowrBJGocsytGgw7VVvm5dS47hQNX92HXQQjJ3zKYrHM624vGkNzgtAAJVAp76rpzwRwCIpZPdblzmwvOkg+QSdZC37Q+PqIc67ae/W69icpWpawxmEcreD7KLZlI2qp+9T79il5ITINTp65UII8XwGSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ODHOwWMEbyIrtZg7Mufx45m/UGz4BdcjJrC8ABVXmSQ=;
 b=AlOVPcgUJXf/1Re7AEjTJ5tzQA8UEsHWFM8XQ+1WX8sUYrJ6/jk9Qa4MsOBLVCM7VVXgipI9+SfjS2a2Lao44AMpZoHsh4JAH7a3rZW6c0Bn44jawoOXItuBz8KPHll3/W+aseu7eBer4mpDUXZRm7vlcs8d6/y4RZ+ovGZ5y2V7hd5Nhlb4GV+bJCVdp3fWJ8BX50vKN5uvLt7g166aD0t3m1Qg3FPtZQu5kUWBO/TT0RbcUuV7+dxd6J1MQhV6ZfvomM0MzAKb1fv6FQ0uvPr4nYd+cgqjHdZA67eYCI1JhNedngamS1Rmnmq5msmNz0AJaI+1Z0zwIR3x6r8FGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by LV3PR11MB8693.namprd11.prod.outlook.com (2603:10b6:408:215::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.19; Thu, 2 Nov
 2023 14:23:35 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf%6]) with mapi id 15.20.6954.019; Thu, 2 Nov 2023
 14:23:35 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231101103101.156505-1-mika.kahola@intel.com>
References: <20231101103101.156505-1-mika.kahola@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Mika Kahola <mika.kahola@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Thu, 2 Nov 2023 11:23:29 -0300
Message-ID: <169893500976.1757.2763206983162106542@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0061.namprd03.prod.outlook.com
 (2603:10b6:303:b6::6) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|LV3PR11MB8693:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d2d359b-83ba-4b9a-f2b5-08dbdbaf4c8c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yJDqWBygnkVsyq/A5038sXsHF+jiYISX3DNDOCDpkKspLDlyCFTH+2qK5aYLC15FC+CLUXRQUrsw7d/a8jetEnqrDpT8lIOr64FqO2g770Fe2Dm1JMnH7IEI32UypNwOfCvVqKpPQAyNYAM1exKmr1t9/J8i9BDgZ98EKhCwTFATH6acXEWCaWycdCKEVtPMv4av6IqYTUGyeWBYMH7//8tjoFueZl2tGKyPHCQF/e2+AroqZ6S04+s4LaRhoPfHV+An96wBVhM4uoF5va2KyWXisoyPa/LEwuKOvF+LaswmxzlfMWbJW8a11/WGIJDAjmkkeOoFzOoifuSy5tXlsfjzpJxysY5AOKphMhj8ABtFOjk9qBK7+xxHYvNVtTpzvjUWioe/wCGzRZ4TlTBZNGsc32y+ILWLpX4IcqtAzu29ZASYhxakcxDml6/wO9nV+ecqMden31s8Xab+w2zkXpJ1xGgcDhR8j9zKgBPw0egrptkCUm16tbc4LVe/tf/VtIsGAJhhcuB3z55cTNBz19Igm+s7VmnAyklrZWFTIlMcIJhnsfjliUJYPs5dg63/
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(396003)(39860400002)(366004)(376002)(136003)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(86362001)(33716001)(6512007)(9686003)(6666004)(6506007)(5660300002)(15650500001)(478600001)(6486002)(41300700001)(26005)(2906002)(83380400001)(8936002)(107886003)(44832011)(8676002)(4326008)(316002)(66476007)(66946007)(82960400001)(38100700002)(66556008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eER0UmpkVm8zdnZzNnc1UDVMVVAvZWdUSGg0Q1JTdGMxUnBtZjVEY1dNc20z?=
 =?utf-8?B?RUlDQk5hbnUxeWY0Q1hoOU1seEp6Y3pBMWp6YkRma21nOS9iYk0xeUIxMTRK?=
 =?utf-8?B?S0ZsZXlmRWl4ZlJVeURNRGduTjhTdnhBM3p6eGJPNnBEQWo3amNzdGxoUUM2?=
 =?utf-8?B?TFdqS1E4RWwzaXpMSFJONWdiTThvdzZhZ2c0aHhvc2Q2dU5TL2NhM3lOaGJM?=
 =?utf-8?B?VDAvTWVKTkhzTmpJT0pKYUdlcGlOeTVtcnRleGZ1YkJYV1J0aWlhQmI2Z3Y5?=
 =?utf-8?B?SkR6VGJqSXJMY2lGUC9FcFVGZ3h0cFpRcGlBLzVsZlI3UFA3MjkvcnM1VWxh?=
 =?utf-8?B?MjFlWk5CNGl4WHBFRGlnK2dCaTNxT2F6TWZ4TjQxMDkxdldDc21DT05JVnpB?=
 =?utf-8?B?RjNETnJxMjkyNWxvbm9xMHBLT0dCNjluSnRzYmdUTDZwYjE4ak9BQ2gvemFY?=
 =?utf-8?B?anBZMUZIYnZHb21sazhsenBoZDJaUzM0TEJKSEdNcjIzU2htRFRUTlVOVXZV?=
 =?utf-8?B?TzJSSjNzMTNBNEZKellDSEhRSUdiRCtJK0VkVjFVR2czWUowNURoRHhNbnk4?=
 =?utf-8?B?RUltUDhUUTZTdi9oUWJlT1NVdXBreWt2NHpDc0w4R0FsN1RtVTBROHBWRzgz?=
 =?utf-8?B?d3BhaXllci9icU9mVWtTblppTFVVb1lvWkhpdHJ0dGY5MWxZWmNNL0o0NFcy?=
 =?utf-8?B?SDBJWVdUUnFLcDVqWkhyWTYybGxIbXEvakJDREV1OFRaYkNpOGFGa1haSkNj?=
 =?utf-8?B?QU1oSDc3N1d1RitZY3RvTU92bGx4TDh4Um1RWEFwMENadlJJM3JrZ3c0eTVr?=
 =?utf-8?B?V2JxUytsRytuZ3hLNENCWU5LWDRBVmVNUnNyd3B4bVRIR0huaFlvNHZMNkhU?=
 =?utf-8?B?aFpaREtPTnVYK1RYb0EzcU5WQUpYV21lbjF1bzJkSk1ZN1puN2ZwaHlMa0to?=
 =?utf-8?B?dVN6WXh5RTRSS1NIQ1dHNFFUbjErdlFxMW55b2g4LytkYnI4RFJUQVNiYUh1?=
 =?utf-8?B?N2RNQklMcUEzNEl4QmpRa211MSsreEZFUVZQeHRPS2dhV3lmTlJ5NU9HOC9J?=
 =?utf-8?B?VVZiT3crN0tuNWswZy9WaXMzK3ZRblZRcTNtUU9lLzB1M29JTjFPdzdOUUR0?=
 =?utf-8?B?cjZOK2pLcDlrb1pqaTBLWS9zYmZ6cU5aaEJHdjdMSURPZlJiWW5laUtiV21Q?=
 =?utf-8?B?ZDltamwwSW5BMTczd3JSemNqN2MwWkh2UmtRN1AyZnZQNzlKQlpvY0dPZ0pI?=
 =?utf-8?B?TjFJTUZjVE1RS1A5eEMwWEJvckVYaXA3NHpQenMxQVM2bEZyQVR2Njl5Z09J?=
 =?utf-8?B?dGRIbWNUYVVhVnZuV3UrNmZDRDR1aXBtUVlqUWkxK2FOSFh0VlJ4MUZNMC9O?=
 =?utf-8?B?R2RMeWdwMXpMQzVmTUl2dzMvd3JQM1RKYlNlZWh1QUNTUUJmQ1FiS0hEMUx2?=
 =?utf-8?B?U2FpKzR1SGNJRVlmaG5EVXRDNmpoUFpKV3A1YVVacHpFajdzTW4vWG1aeVFq?=
 =?utf-8?B?MVVRSVBUWjdCYVlTUU9UajdGb1M5YVhzQVpscDhMclc3cGtoa1c3bThqdldG?=
 =?utf-8?B?TG9COWI3TWJRUW1ZRHRHdkIwMFVCM1pVVy9nWjhWU3RNcEFVaUk1MWpSYktv?=
 =?utf-8?B?UG1kYlBwV3hjS0F6TTJOS01QUzVlRDNHL095YkJDbktuM2V2N0IxNWFhQmRo?=
 =?utf-8?B?MEJ4Ny9MZVFPekFNYWM1eVNWNGN5QjlJbitVVWlqQXdlUlY2c29nNEFRL1B6?=
 =?utf-8?B?WG9mRzdwaTRrc0RXQ0IwUnhQdGVWcFVHeHJTbmRQdUJkZFBPM0hBMWk1OGlR?=
 =?utf-8?B?dDJRQWgxLzIraGhxZEM3V3FVamNrMkJ4RDNuN2ZKVTd3dEF3TTFicWEwK3NQ?=
 =?utf-8?B?WkdXUDMyaW55SnpDcmFEYnpubFUremQ3VmFoMEtGcnBmUzRod09ESk9ZTlM0?=
 =?utf-8?B?aTVCbjV6RlQ0UHhINERiYnh5UTBXT0NibEwycFA1U1FwSUpPckQ0R3NNSUt5?=
 =?utf-8?B?T2pqUTFvSFFkdlFzQytsSklIb25qM0R4OEIyWmhHYjRJVnh6RUNVN3FCbFhs?=
 =?utf-8?B?VzhFOGEzcURtTS9Kb08vSTBxN2Zja091Ny9vdTBYaEY2RHdEL01DZDdoU0RM?=
 =?utf-8?B?UlNSS3BnY0dZT0ZhalpvQ1RnbWpNSkxsK21DUTA2aXZwWGYzSS9UbWpnbHpX?=
 =?utf-8?B?d2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d2d359b-83ba-4b9a-f2b5-08dbdbaf4c8c
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Nov 2023 14:23:35.6312 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5U9tqEuhSO8BY/SXL0jKHzIawhr4CibUIAFyZD9hqTP0y2l+iwXiuinUNLKk6ReWnz+0b8/kL2ws4nY7445D6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8693
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Clear possible sticky bits on
 PICA message bus
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
Cc: jani.nikula@intel.com, ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Mika Kahola (2023-11-01 07:31:01-03:00)
>It is possible that sticky bits or error bits are left on
>message bus status register. Reading and then writing the
>value back to messagebus status register clears all possible
>sticky bits and errors.
>
>Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_cx0_phy.c | 14 ++++++++++++++
> 1 file changed, 14 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/dr=
m/i915/display/intel_cx0_phy.c
>index b2ad4c6172f6..f439f0c7b400 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -195,6 +195,13 @@ static int __intel_cx0_read_once(struct drm_i915_priv=
ate *i915, enum port port,
>                 return -ETIMEDOUT;
>         }
>=20
>+        /*
>+         * write XELPDP_PORT_P2M_MSGBUS_STATUS register after read to cle=
ar
>+         * any error sticky bits set from previous transactions
>+         */
>+        val =3D intel_de_read(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, l=
ane));
>+        intel_de_write(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane), v=
al);
>+
>         intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
>                        XELPDP_PORT_M2P_TRANSACTION_PENDING |
>                        XELPDP_PORT_M2P_COMMAND_READ |
>@@ -262,6 +269,13 @@ static int __intel_cx0_write_once(struct drm_i915_pri=
vate *i915, enum port port,
>                 return -ETIMEDOUT;
>         }
>=20
>+        /*
>+         * write XELPDP_PORT_P2M_MSGBUS_STATUS register after read to cle=
ar
>+         * any error sticky bits set from previous transactions
>+         */
>+        val =3D intel_de_read(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, l=
ane));
>+        intel_de_write(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane), v=
al);
>+

Looking at the current state of the code, looks like to me that we already
clear the bits from both the "success" and "failure" paths. For the "succes=
s"
paths, that is done by a direct call to intel_clear_response_ready_flag(); =
for
the "failure" case, the call to intel_clear_response_ready_flag() is done a=
s
part of intel_cx0_bus_reset().

Thus, considering that we start using the msgbus from a clean state, maybe =
these
extra steps are not necessary? Have you tried adding a call to
intel_cx0_bus_reset() as part of intel_cx0_phy_transaction_begin()?

Also, I think it would be good if we understood better were those uncleared=
 bits
are coming from...

--
Gustavo Sousa

>         intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
>                        XELPDP_PORT_M2P_TRANSACTION_PENDING |
>                        (committed ? XELPDP_PORT_M2P_COMMAND_WRITE_COMMITT=
ED :
>--=20
>2.34.1
>
