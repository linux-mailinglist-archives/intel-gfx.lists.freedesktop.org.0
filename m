Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 085E35E69EF
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 19:52:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4CED10E072;
	Thu, 22 Sep 2022 17:51:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF28710E108
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 17:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663869110; x=1695405110;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=54QyJkCvu6aFeiS3QZwgbTd6wpzg+pir8toFInM/veI=;
 b=RkHyUDNiFFv7v+MfyTc+2fxu50IapEd3llytRUb1xQYVe87x6kgyqrVv
 CpEX+SpiWT9sot41eVWCeciAzcNsNY3sUZMHOFvXpMJymXYLtXhsO32BD
 qGInGSNFVB1FxEKUywmm2zTYW5cATSAe2/rgs58/doNP+o6lQpq/bHBoO
 zXpsdZQyu5N5mFVf3qtj/jUw7KuyCJAUsWATtTZofVyo160Xg44wjKhnE
 VNP/cQrGnlWiafa1TfURKEsR2B+nFZaX4cXF9Y+GXGDphVRKDXVJ/tyR9
 VmvqeZwBv4xjNmavGH2xXo6jZIBwtonY9SRIT1QWiT8IlVjjxykqd+Cbt g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="362149813"
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="362149813"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 10:51:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="745478583"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 22 Sep 2022 10:51:50 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 22 Sep 2022 10:51:49 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 22 Sep 2022 10:51:49 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 22 Sep 2022 10:51:49 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 22 Sep 2022 10:51:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k8XSRSiVnkZqN/o/Vm2Wg0ya1GXj/AmOIhaDGtxf/T4bCPPyRrCVWc9VnW5YyKnuHUoBSXNoM//VJrbHtX4DxxxgIH/kZVOnm9irxKaNJc+ZnSrUY5XVyyVYCi/qFaVRKE20PLOIrQwnLDB+ztKOdb4tPUyiYWHfl+TOZlkCYrT4m/o3+kj4ylQ3PjGBToD5T/f2KQvv3uDOlQNMccsMXlMyHNmpcVeyqPh6bv38YQR01Z4Wkiza97uMDYly3RGtrocclIYwKX4hhTK/41FUjBgf3vWL29PSacRUYI6N0icn+BIh5h5ymG1wNnJRj/mU0VPYZ9+7Y+vWh8we6R8LoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k8XaUCr2MVvd6AWaqap66fMeAXipPZD3UrV8NmpVw1I=;
 b=VkkdjTuMbDxfa6r3hprwgkcqhfC9U6duP+qJdb18cWgzRvuQPpmr2eCqmoBHo4aWTlVLVyTrTp03Ri6Iwny250yu+xL3MTEtr+VlOOjIkfm8s4R/aWJeefIdpylHiAkK8T1+jeNyTLJ1myxfyeVyfMheVsmYTFQHlDXTXMveLktddqInaT6h+IuPS88Xbsbmj5XpayQpqrCI61CExptKq/i7XGdBnsxq7IJjEppF5uL8bFy0EKL4HGszfa+WLWnjLiS8nUWCE5NGqxU74PWBm0C+We3Hd9CDj0TPM5gcJH23kdp3/Xp20TIoFimClNfOS7zgwHOs2SaS0bFVJZU6WQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 DS0PR11MB6495.namprd11.prod.outlook.com (2603:10b6:8:c1::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5654.16; Thu, 22 Sep 2022 17:51:47 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::fc2f:babb:578c:f03e]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::fc2f:babb:578c:f03e%6]) with mapi id 15.20.5654.019; Thu, 22 Sep 2022
 17:51:47 +0000
Date: Thu, 22 Sep 2022 23:21:38 +0530
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Message-ID: <YyygqiFFNMbn/jn/@bala-ubuntu>
References: <20220921172300.130964-1-balasubramani.vivekanandan@intel.com>
 <YytT9xhRYyEjrTX6@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YytT9xhRYyEjrTX6@intel.com>
X-ClientProxiedBy: PN2PR01CA0162.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:26::17) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|DS0PR11MB6495:EE_
X-MS-Office365-Filtering-Correlation-Id: 95a67b9d-ee11-4984-1957-08da9cc31ed1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7DWDOawDo1twByaNGDaRTNvooxz6AaFNuk/AtqnJ5RX4aBsKG3Idqfb+FW74I1StCuSPbrs+o/z2Vddx1aHH0qyBZjczgIAIfYbVevoBESmQ/SlYqkx23zAgU3huTM5M3tkhJSPvVFq2KA/ZEsk0LSH7d4eSn8zPyWnLadLQQ4Bk1bDVLizx4UXQI9vRyoxd3CcI3IcADjFpcFrS8WdPbFBAKA52Fn8XGT89vWgFnVhFhv9uuHIWXLEHh0sSyhWWsJ+8XE7CgF0tquvR/jCCHTwe9YlkLlE2EQK/WnYQ/3Pj49M7oBYuMLtAes4d5duUgXJS5GASCmOi4sx6n0JkPG6z+PSv1+8sAdHQ8duBPIGVcv9sOGEke6JEXCaePcx+eGGgwUjRWPriYcuqpYP3ffU1nS5kYD/XcYnTu6/D3uVBh9vAJGW7ePsnzXtjU3Mlf+Tr966UbVxgmPH6GWvqw1ovg0bhyjdlrovCz3eEfyGWqdUh0g7PXLglZX+4wSy24PXta6tUAkm+aVoJOy6Xhk0kTGtVf82EGB086xbOz/3XFmp9KNGB+pRrApM3jrf2jVmB4eojeJbWaC+E4NXVftRBezxghybUJXcsf7y0zcE81YgvKAxMmL3NBxrkOFl1bPjWcj3GKnlgxEbcPmb+9o+i5OoOEBqloz11AcfVHo5weAcb4ELDDY0by0x3UJEBHP1mvx+hKB7GEpPqrR1e4g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(366004)(39860400002)(396003)(136003)(346002)(376002)(451199015)(4326008)(83380400001)(186003)(66574015)(82960400001)(6506007)(5660300002)(41300700001)(38100700002)(6512007)(44832011)(26005)(53546011)(9686003)(8936002)(6486002)(478600001)(66946007)(86362001)(6666004)(8676002)(33716001)(316002)(66556008)(66476007)(6916009)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Vk5DYncvRkNVRGVuV3k5bU04K2l6ZWJIeVptUjdMVEtTZXFnb1QxMUc0TERJ?=
 =?utf-8?B?bzZBQ2UvdGgxeE5xaXdxcmpjK2J0TGNRQktTemFKN2pYMjJ1a29jMXRKdU1W?=
 =?utf-8?B?QkVOSTZ4UExVU1NHT3NaMmRwZC9rVzRhb00wL3lvbUkxdzRxRHcwUU1tcC9T?=
 =?utf-8?B?L3BCTktBNWQwd2o2WXlPeGtpYThQRktPTW5LS3VkUUc2R0l1Y21JN0tlOFBB?=
 =?utf-8?B?MXFkTEx2TWQ0MEhHeTM3Rld6Qnp4VXYrVGM5TDA4NEdvUUwvUmh6eG5ieUdo?=
 =?utf-8?B?WVpjTXp2K1BuSCt6SWhrNGRHVzRtYmRQV3JBSVo4SFd0enR3T1FtYStXOG4r?=
 =?utf-8?B?eUwrMnRMUTdyNTJGdkVsbGUvbkJFeWZLQTF0LytGSW1HT3VFS1pqMXJvNXFi?=
 =?utf-8?B?Unl5a2JZK1NpcU1qYWxlUjNGM0hkTStuTnhPR3E4UEFQUW9kcGM1TUpjYUJC?=
 =?utf-8?B?clR1L2xtVGVVNGVZSy9JSHp3REgvRk1RTGUxeWRacThzMzJCQlJZTGYvakwy?=
 =?utf-8?B?Mk5uVlRJNWZjL1VEdmgzRlhNQUZRY1cydm1wSVNVRjJ3M1lzRUlYQW1KdG43?=
 =?utf-8?B?bnRZZzZCRmdaRFBLNVZrZEZzT09nYmZ4Qk1tTjdEaXNDZVlxS0Qzc1dXdUxI?=
 =?utf-8?B?cnFqSVhUdHFQbi9PVDZURjE5SnpBWWFGU3J3c1J6eFVTcXZPcnVONWRLZlh3?=
 =?utf-8?B?N0V4Z3hGcVI0UGF1Z2ZuUDNtaGhuMDJjT1AzcExzQWFvZDVDWFFYR25aVHNm?=
 =?utf-8?B?dXl1ald3ODRNaXp1N2RJNkkwVXFUTTBJUTB6TGdmQ1k1MHRISTkrUjFHbzV2?=
 =?utf-8?B?YllIaE9CT2pKT2I2Z3RmNDVyKy9NcUdza2VaWXZqOGY0b0hMbzZqdm9LVk9q?=
 =?utf-8?B?aGhObmVxTDhKQXdPRkl5amJZbE5lc2dST2h0S0RiZWhyeVNEV3p1bm0yVnAy?=
 =?utf-8?B?V3B1VExFbEoyZUNZOGNGbUJtdWlTMVYwN0hqZG5IbXpKVmpBWXNuWnhNVTdi?=
 =?utf-8?B?dGRZNlpBR0JwSGVFUGE1NnpnMFVqZjZOb0xENWVJU0txUlN1WlZsa3R3VW9X?=
 =?utf-8?B?cjZoZmpHRG1maEZRUHcxbitvTnd0b3N3ZUFNd2gyZ3B6cXlITTZjV3I5RFJ4?=
 =?utf-8?B?OFZic3J2WXl3ZitlVDQxNThjcm5Wc0JDdmlPb0N0OXRBWTNiLys1MjZzamo5?=
 =?utf-8?B?WHoxRTJDMGNxTmwrZVkyNCtUS01oYVhQVEkzdU9sd0RuR1VBVG50alVuN0Mz?=
 =?utf-8?B?clQzZy9uSFNzRno3Q0F1VmFkYTVPRnhWTjljRm8wTjhFMlQra0w3R2I5bGFG?=
 =?utf-8?B?TmJLeEt6Q01vSFJWQ3paLzJsSHIxa1d3SVJqYjd3bDBlUEgzQXEyV3haS0xx?=
 =?utf-8?B?bE9TWlJzQmFZWDFCbVUvVy9JenB1U3FzWWx4ZmcxSnZjcFdOUldlaFBrV2Z4?=
 =?utf-8?B?MmJLaktRWjBKTy84TWZLdkZwbjNkQUlmQm5ORisrNERaanIrN00vd0RzYWdZ?=
 =?utf-8?B?WG5Nb1lnYnRZR3RDL3RvRTFMZXkwNlhTTkVsYXdPNytnWllJNzlKcThmeG95?=
 =?utf-8?B?R2gvOTFDaTFYVnVrd2c4NTJtK3BZNjRBU2ptMlo2TnEyVU5HQzdHUHhJNWN2?=
 =?utf-8?B?bnVMZzkvR203R3FmZXZCVXphM2hsaE9LeFJvdmZQZHk3Z0tuZXBFdURhckZR?=
 =?utf-8?B?cGxSTEpiMEtybGtGQkpJZEZ6RnI1WjdTdGcyWlZaNktGcTFkMHYybDREYmEz?=
 =?utf-8?B?eWlFa0Y5ZmVuOXl2KytjenQ5eEpxV2FDNDZaUDZwWmpEVCswaHpLdUowc1BX?=
 =?utf-8?B?U2ZGUnhiZ0N6RWxnL3pKQVd0QXRuYnlNaWlyWEVrKzU0Z001L2NqM2I1U1VR?=
 =?utf-8?B?UTU4RGVXcnlrUEtOZnZnS2tFM041bDI0aHQwbmZtbEQ5TUU2VVdoNit5aUkw?=
 =?utf-8?B?TGpwclVZa2tOV3hKUnVuVStRTEhNSUpYTUlpQlYxYVBWb2hhS1QwR1kweVoy?=
 =?utf-8?B?ZzYvUFhZa05NNWhMRFZqcmh4T1UxYzhHNHd5WHdZV0E0WE5tRDJqTXRjeExF?=
 =?utf-8?B?WG1wekJpZnMyQnJNTWhmN04rd3ZiYk5ZL0E0VkhBQVJ4eEQ3NEpkRWZTUUVz?=
 =?utf-8?B?OVhrcytsUnArOFBrZXE1T1JJQnc3NGRoTU1NeEV5VmY2cTgrQnl3Q0lLQlVD?=
 =?utf-8?Q?VP7zqIycnKHj/qnAqqZKj1Q=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 95a67b9d-ee11-4984-1957-08da9cc31ed1
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2022 17:51:47.7484 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qU0Pg6j64x/vzr/3nqgtb3QvwQYkepEyaH16mONmbr+ZIDLK+n5JoqzB6Ohnxa4R5Ee0X7n6BtoVNQ1lyk+pnscwHgUEvFNli1kloQ/49DZdslYFAZiPmo7g/rc6Q3Hz
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6495
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Don't use port enum as
 register offset
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 21.09.2022 21:12, Ville Syrjälä wrote:
> On Wed, Sep 21, 2022 at 10:52:59PM +0530, Balasubramani Vivekanandan wrote:
> > Display DDI ports are enumerated as PORT_A,PORT_B... . The enums are
> > also used as an index to access the DDI_BUF_CTL register for the port.
> > 
> > With the introduction of TypeC ports, new enums PORT_TC1,PORT_TC2.. were
> > added starting from enum value 4 to match the index position of the
> > DDI_BUF_CTL register of those ports. Because those early platforms had
> > only 3 non-TypeC ports PORT_A,PORT_B, PORT_C followed by TypeC ports.
> > So the enums PORT_D,PORT_E.. and PORT_TC1,PORT_TC2.. used the same enum
> > values.
> > 
> > Driver also used the condition `if (port > PORT_TC1)` to identify if a
> > port is a TypeC port or non-TypeC.
> 
> No one should really be doing that, apart from a few exceptions
> during initialization. Apart from that I don't think enum port
> should really be doing anything else these days than being the
> register block offset we pass to the port registers.

Yes, my main concern is trying to fix the enum values of port to match
the register block offset. As we have seen with ports PORT_D_XELPD,
PORT_E_XELPD, just how if the hardware moves the register offset of a
port to a new position how much chaos it creates in the driver.
It resulted in a 
1. new function xelpd_hpd_pin, 
2. New condition check `if (DISPLAY_VER(dev_priv) >= 13 && port >= PORT_D_XELPD) {` 
   in function intel_ddi_init()
3. New conditional check in intel_port_to_phy() function
4. A new array item in `static const struct intel_ddi_port_domains d13_port_domains[] = {`

All these special handling can be avoided if we were not to fix the enum
values of port to register offset as shown in this series.

I am also worried driver how much mess it would create if the newer platform adds
new TypeC ports at register offset after PORT_E_XELPD or if it moves the 
offset of the existing TypeC ports.

> 
> Well, the VBT code does screw over that idea kinda. I've been
> occasionally pondering some kind of separate namespace for ports
> for the VBT code but haven't really it throught it through in
> any detail.
> 
> > 
> > >From XELPD, additional non-TypeC ports were added in the platform
> > calling them as PORT D, PORT E and the DDI registers for those ports
> > were positioned after TypeC ports.  So the enums PORT_D and PORT_E can't
> > be used as their values do not match with register position. It led to
> > creating new enums PORT_D_XELPD, PORT_E_XELPD for ports D and E.
> > 
> > The condition `if (port > PORT_TC1)` was no more valid for XELPD to
> > identify a TypeC port. Also it led to many additional special checks for
> > ports PORT_D_XELPD/PORT_E_XELPD.
> > 
> > With new platforms indicating that the DDI register positions of ports
> > can vary across platforms it makes no more feasible to maintain the port
> > enum values to match the DDI register position.
> 
> Do we know that it's going to get even more messy?
I see a big possibility. 

> 
> Anyways, we have the exact same thing with AUX CH, so trying to
> change one but not the other isn't really going to help.

Yes, I am aware of it. DDI_BUT_CTL and AUX CH registers have same
relative offset for the ports. My plan is to use the current series as a
prepartion work to clean up the AUX CH handling as well.
I will send a follow up patch for it.

> 
> And on top of that we have the horrorshow in intel_port_to_phy()
> & co. I think the phy stuff is probably what we should try to sort
> out next, since IMO it's the bigger mess.

Agree.

Regards,
Bala

> 
> -- 
> Ville Syrjälä
> Intel
