Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3034B72E97B
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jun 2023 19:25:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF4DD10E05E;
	Tue, 13 Jun 2023 17:25:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5528110E05E
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jun 2023 17:25:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686677136; x=1718213136;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=iKEqy/+9+eUTDGhRavuxSjKuQAhGNgeWbpvk4YpqR9A=;
 b=jO9Jl9mwW3T0C/X4Zlrmcp7+JVmG22LVXNWvpeltlogWLFf2GF1OXqFD
 SJjDR/0iuIe3zLQAIM/qW0igcZVD4KqUP0PaoydySv8MEC2K5hU2DXxxH
 wGF3yi1wWXMH2CHUe76qr8RJa72BNRvmKxRcYGIUT+wWRVxhrE22mYpDc
 4t+tS5wNNSBtcd3wTtfkewC6DTqlKv1h0GZMIYLacxYzaZH08XYmX/d42
 QMlawasx2ChRaZ0pQ/WFSz1WStgdIV6PMS7gSGkwYrl4fXPdilf/NfOWU
 7ezfgFkJHPN0iK7KAiTdmDKpG25G/SRz53M54MY3OD4JZVQF5hD0oJYj9 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="355901238"
X-IronPort-AV: E=Sophos;i="6.00,240,1681196400"; d="scan'208";a="355901238"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 10:25:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="824500124"
X-IronPort-AV: E=Sophos;i="6.00,240,1681196400"; d="scan'208";a="824500124"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP; 13 Jun 2023 10:25:34 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 13 Jun 2023 10:25:34 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 13 Jun 2023 10:25:33 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 13 Jun 2023 10:25:33 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 13 Jun 2023 10:25:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D18SfodLpwGvvqG87bzAk3lc3cJHq3LvWPWq2eAxyswoeJH2S94gnwfyGf61fxOB5lvEWWo0VE/YNockMPQzZkzrwkhKNcGPmvWvm+WY3qn3FQSOvaR5aNthFBVb6UQ7Ee09c+NSP+lo4XYfO5Jn0BjoIeOrvHRZnAXmuISdRnSO55Lc7ri6dCQc7FCc/kEgIYItGudz6JuBDszURiDgSXjHgwTfTfkS+s+zUlZ1aiUUO7QPtK7pRK4c9sBAfZyyCsjr2af/3wawFH7mKpIu3N3yDC4N50BdgnPNiMo4z02MlIKpYQT/cATc5fb9JqEIY5VA9leQpWdK1Mb8+WNVBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y3zLojiX2ThMii47Tnq0B2/DTiOVzegYrUea5UpZzlc=;
 b=NApGLm950EBaAPJv/Wgn8d3ufJpCYw2AkByR/AOU4w3ploIaqSS2gMuMCU7lwYAYdkAdoQ1/c+8tT3HIesSHoSge13mwyJfDo1bNUS8z40e++gmz/MdvYkB5H0vMqoMCVOeSNYGLxL1IK/OeLn2T/MGlPmUf9UyYSgFKbyFNxRRSye5GOrGrr2XoX2wfJDlT3z3s2nfEqngsENv+LCWFCpwZh5IQY//OCLHY4qKm5Oq+b4yKC6+oLCrQ/gqEysrlg4fMAGfiMertvwHhBhpcGKQL6ViEBzSLmu6Und/Q7+OjM1AtLY0ZdPmlDv7ZiAo93QD8fXn8Gj7d9drRZejT1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN2PR11MB3567.namprd11.prod.outlook.com (2603:10b6:208:ed::31)
 by DS0PR11MB7216.namprd11.prod.outlook.com (2603:10b6:8:11c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.38; Tue, 13 Jun
 2023 17:25:22 +0000
Received: from MN2PR11MB3567.namprd11.prod.outlook.com
 ([fe80::8723:ca8a:452f:6e4e]) by MN2PR11MB3567.namprd11.prod.outlook.com
 ([fe80::8723:ca8a:452f:6e4e%5]) with mapi id 15.20.6455.030; Tue, 13 Jun 2023
 17:25:22 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230609122130.69794-1-mika.kahola@intel.com>
References: <20230609122130.69794-1-mika.kahola@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Mika Kahola <mika.kahola@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Tue, 13 Jun 2023 14:25:15 -0300
Message-ID: <168667711586.20985.1748785256576357249@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR13CA0033.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::8) To MN2PR11MB3567.namprd11.prod.outlook.com
 (2603:10b6:208:ed::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR11MB3567:EE_|DS0PR11MB7216:EE_
X-MS-Office365-Filtering-Correlation-Id: 376d8294-b6f0-422c-0408-08db6c332ad1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8Y1160Yd/Cm6Kae8v0P62noiyI+/9NEBM/J8eQXDeKVJshJPoufh1PudaPS9CXmkx+ABniihK3IPeSQa1AMbMvrsr37cqBe95xLLImAoquoew/d+1yuE2YSjeKCrL0HLCKCJeurswCNRAnaFrSQgTVXzHQQk1b5vpXlC36OkDhtcWOhn7c7Lu+WUCT1/IQWYTZUVPWzLnjvHuDqz94rMkdE34FIUBia2j/acsyk30Uwm+twBUZZ+qbjpsy96Ewn1ZZ67558MGzEZIl9l28ckM17wcV57A6xd3b9Dk1x48tV3jPlfzrxdPrpo190aynA1TazLRahGw77+wPrNRxG/kxfuT7mYTLuEd+wxQvRvjqNRCuyowQ0XtrEpgn/4KzpSy6Ts0fovgRd/vFX/tWqe5Rtlm2+vSc4e8GlP6bGhAJHMNXPCfN4fWGKNsHJtLbkibu718UxpQ7KWZBeekvmlVfTufrnXG6A8a3Zxb7FbgHDz4TL7yd0OnMDsJN0G/4UbYVG/LhU+jo+3D8ptskLB6zZW0xyR9Oq+MRDHBZTwQH3Mq8XmbEMaCK+/IRJ/5JS/
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB3567.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(39860400002)(376002)(136003)(396003)(366004)(346002)(451199021)(66476007)(66556008)(66946007)(8676002)(5660300002)(8936002)(6666004)(478600001)(41300700001)(316002)(6486002)(38100700002)(82960400001)(86362001)(6506007)(83380400001)(26005)(44832011)(9686003)(33716001)(186003)(2906002)(6512007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YWg1eFpQZG9QbXVoekk3d2R3YnRoVFlUdDB1cFlBUWJWKysvRzZaeDJKdFlJ?=
 =?utf-8?B?c3IzUFQydXFEcW1MMU56ajM4TlVJSnVxM2NvV3lGQnFjSjF1enRBeG5vcHht?=
 =?utf-8?B?eXFqTUFKUE5tbjVPNTlRY3ZaSXYxTnFSdUROTHVsUHhCa0RMcUJFUkVaNjhP?=
 =?utf-8?B?N1BhdWNZVmJqejZra1lZVnNMTjJxcjRPb09KcWJhQ3dQMnZmVEZUSnpuTkN0?=
 =?utf-8?B?VTVjdENZRlE2KzRtUTFWRGhSU01iYjU4cHd2b2piU241eWtoazZOaXhDdTlP?=
 =?utf-8?B?ZlZFTEVXZitOYlEwbXptZUJWT3ZGNmkyZlI4cS9mSWZya0NwNWhqV1JLV3dE?=
 =?utf-8?B?VUlVQmdFbHZDNjVGeU43TkRrOU5oeXZMdUZ4SVlBUEhBUWdDUm04WUxzV0Z4?=
 =?utf-8?B?eitzeGlpWGVOZjMwZDVGN1JUcVUvMHlzVHlqOXBWUTJ1MzNNNCtwY0Zndmpw?=
 =?utf-8?B?QnNrS0o2SU1WKzA2aTE3MDBOMTRqMzViY0UxNmtURE5vczNidk5uU1NWMENJ?=
 =?utf-8?B?TG5NbjJsUXVsOGlNdnd4bk83Tjl1Z1R5NU93dFM0RWxqODhIN0U2OVBJR2FI?=
 =?utf-8?B?SDdiZVVGTktETzRscGVMY09CUHNueEw2Z0lBRnVqTm00WkJyMGdGdHBVcVhF?=
 =?utf-8?B?eHpFVnpLdCtLL1oyNWZNeXdQbjIzdUhZSmhRU0UwRnFHRGlMVzM0M2pHVE1v?=
 =?utf-8?B?WHlGWklYc2lRRWl1QnAvcnYxV1d3MG1SQWdyeWM5Z01EVFl5OWRJSTZ2S3hL?=
 =?utf-8?B?MmZPa0hlb3Vvcys4ckZaUVhoc01jbnFtcDJmRDQ5blRhN1JOZExINTQ1WUVF?=
 =?utf-8?B?MVlaYVIzU1R0VUFIN2NYRlRsU3hxUmJYVWJCcUNMc3ErUEJkOG1YQTRUNDJm?=
 =?utf-8?B?YzVUUk90bmJNSWNWNGR4V2xGa2RnbUM2UjNLZTVRcTZKMVE2OFBGcUdKM2Zv?=
 =?utf-8?B?TmYvN21SNTBQQXpPTnVjNEpaS3JmR0ZueDEreE1DR0YvZW1VUGZ1QStnOExk?=
 =?utf-8?B?ZnYzd3o2RnZUdWRQRlBKS1I3VnRyRWZicXBPQ3RRekFocGd1bEluSGpiTnJ0?=
 =?utf-8?B?M0VUc05XRUhKbXBaZEpVZkk0aVg2UUVWeHFORStEdS9SQjd3cVdZOW9IaGRm?=
 =?utf-8?B?TllMZEFZLyszV3lRZ1pIb1oxZGRTc3hRQWFqOVVUaTZZTGVlZnV4VXRWSk1K?=
 =?utf-8?B?bk5JOFRRelkxZEd1T0I2ajlhK0tzVzh5akZoNWxSRU5DVmxIeDJibkl2VjlL?=
 =?utf-8?B?d0h0K2pFQ1c3OFJTNnVTTmI0YVZSRWtDSE5zU25raEVFYmxEb2NoWkYxbjVq?=
 =?utf-8?B?Q1FFeDV4dTRkNnZEVjZaT0ZmcEJsK2hPMFhyVkJKdGZuMWVTM3FSNEFhcGF5?=
 =?utf-8?B?VDdMRDNFamxYSk41MGFHRW82MDBXaGVWSE91V3ZFaWdtRlAvem9GWURZVWVo?=
 =?utf-8?B?TFVOaG9wMklIYW9nMlpKTU42WUEzZVc0cis5YVpBRitIbE5MOFFoRSswd0to?=
 =?utf-8?B?ZzYzRzJXYmRWa092Y0lLMVRGR0YxQ0R6OTNneWp3QmxpRHplM1lMaUFhcCtI?=
 =?utf-8?B?RktwVkEwdnR4S3gwMVpmN2JjdC9SR1gyMCtNV2E2SUErVmNvdW1MM1g1Sm8y?=
 =?utf-8?B?b1FiYUxDUUtzOHBld3FvN2RBSWNiTDl0Z1hYdEZMTXR0TFFxc2Ura3R4K2d3?=
 =?utf-8?B?YzRYeXlUbXl4MDFFeU4xMUI1ckZCL0cweVlldjdTbmNGTFJweERVc3JOcm9H?=
 =?utf-8?B?aTlBaFBVMkFQR0hJVVlZWks0L3ZmNDl4RzZYYmFHRDFXbXNZdVpibjRiWXFq?=
 =?utf-8?B?NmpNUDRLdEJvYmxEeHROUWR6U0UzVkFvV09ubHBkZFNkZGNxWFovM0FHKzRF?=
 =?utf-8?B?Ym5TbTVESVBQRlRqTjZxWU1ONjFxQ3JoNzlLSlpHeTFHTFV0VjJJYWhZVUVI?=
 =?utf-8?B?eE93SzErazFST2hmcHJqZU5rcUJtaXRqVnNXUCtXeGxBNmt0b0hOTnNSdHJq?=
 =?utf-8?B?N2x5WW4wcTBJcmZKMHVUdStJckdyaU8zVWp3djBrNmd4RWdZY0NwdTlTK1Fl?=
 =?utf-8?B?VS85aU44akZQQzlCMHZnNlRieERuSmFNa2txQWVBckJmUjhWaGtteHVHeDli?=
 =?utf-8?B?U2N2RzNOWE9VTlNKZVllSmUyYVVOWHZxVEREamhTakorczlyZGhsQ3Fva2lV?=
 =?utf-8?B?TGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 376d8294-b6f0-422c-0408-08db6c332ad1
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3567.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2023 17:25:22.2782 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kACxC9Y3RHjNaJmqbBe2yQjGB3S+DsjCnIA3/mQc5W1mUdgRUb0+owAd26MaxEQN0MHlz01EOQ75W8hoxw+jLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7216
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Cleanup usage of phy lane
 reset
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

Quoting Mika Kahola (2023-06-09 09:21:30-03:00)
>From PICA message bus we wait for acknowledgment from
>read/write commands. In case of an error, we reset the
>bus for the next command.
>
>Current implementation ends up resetting message bus twice
>in cases where error is not the timeout. Since, we only need
>to reset message bus once, let's move reset to corresponding
>timeout error and drop the excess reset function calls from
>read/write functions.
>
>Signed-off-by: Mika Kahola <mika.kahola@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_cx0_phy.c | 13 ++++++-------
> 1 file changed, 6 insertions(+), 7 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/dr=
m/i915/display/intel_cx0_phy.c
>index 0600fdcd06ef..f235df5646ed 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -116,6 +116,7 @@ static int intel_cx0_wait_for_ack(struct drm_i915_priv=
ate *i915, enum port port,
>                                          XELPDP_MSGBUS_TIMEOUT_SLOW, val)=
) {
>                 drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for messa=
ge ACK. Status: 0x%x\n",
>                             phy_name(phy), *val);
>+                intel_cx0_bus_reset(i915, port, lane);
>                 return -ETIMEDOUT;
>         }
>=20
>@@ -158,10 +159,8 @@ static int __intel_cx0_read_once(struct drm_i915_priv=
ate *i915, enum port port,
>                        XELPDP_PORT_M2P_ADDRESS(addr));
>=20
>         ack =3D intel_cx0_wait_for_ack(i915, port, XELPDP_PORT_P2M_COMMAN=
D_READ_ACK, lane, &val);
>-        if (ack < 0) {
>-                intel_cx0_bus_reset(i915, port, lane);
>+        if (ack < 0)
>                 return ack;
>-        }
>=20
>         intel_clear_response_ready_flag(i915, port, lane);
>=20
>@@ -202,6 +201,7 @@ static int __intel_cx0_write_once(struct drm_i915_priv=
ate *i915, enum port port,
>                                   int lane, u16 addr, u8 data, bool commi=
tted)
> {
>         enum phy phy =3D intel_port_to_phy(i915, port);
>+        int ack;
>         u32 val;
>=20
>         if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port=
, lane),
>@@ -230,10 +230,9 @@ static int __intel_cx0_write_once(struct drm_i915_pri=
vate *i915, enum port port,
>         }
>=20
>         if (committed) {
>-                if (intel_cx0_wait_for_ack(i915, port, XELPDP_PORT_P2M_CO=
MMAND_WRITE_ACK, lane, &val) < 0) {
>-                        intel_cx0_bus_reset(i915, port, lane);
>-                        return -EINVAL;
>-                }
>+                ack =3D intel_cx0_wait_for_ack(i915, port, XELPDP_PORT_P2=
M_COMMAND_WRITE_ACK, lane, &val);
>+                if (ack < 0)
>+                        return ack;
>         } else if ((intel_de_read(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(por=
t, lane)) &
>                     XELPDP_PORT_P2M_ERROR_SET)) {
>                 drm_dbg_kms(&i915->drm,
>--=20
>2.34.1
>
