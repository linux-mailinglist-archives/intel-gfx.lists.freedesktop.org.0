Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D363CF541
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jul 2021 09:23:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CC2789B18;
	Tue, 20 Jul 2021 07:23:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98AA589A35
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 07:23:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10050"; a="296753715"
X-IronPort-AV: E=Sophos;i="5.84,254,1620716400"; d="scan'208";a="296753715"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2021 00:23:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,254,1620716400"; d="scan'208";a="494577214"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 20 Jul 2021 00:23:39 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 20 Jul 2021 00:23:39 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 20 Jul 2021 00:23:39 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 20 Jul 2021 00:23:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EaHcyjQS5W+OGcOXT99BfoAarpd4g75hznhQ1kOcnM61cUuoeHuH1M3oGsQ5jc4hnGqANrA+WyyZSmSrWNT5ecq/Mg3d2zg7V6OqsFIIYRI0FhS4etJWcgpTC5CnHFOVBYsrbSRgoGiTedcW0RtYIXhGT6w4QXGjzipMWcDEmI2NV8kqilKcpJxd8c/F+0KshkUO8G2cotDMbhdXvcVnfXcFss+qPtV4QK7qqIbWYXX58lZ3dS1muZejHaVo812SNEMSDJRseKLhVGt0NgNqalMRdV0WMr7j5TPmk9F6IXwiFYjXWhP1w/1n71g3hemoP0aKZWVFE/iJcgmtpnYgWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UGoxi6OasbJKZWupYH/b7E9WsFXUfQoXnEfA2dnLU8Y=;
 b=LJStfCIzkAut+ydCPrgPqvrBT+2WBtippPlDWjaVfddwx/nc1RNNfXEib9n9JVOBAWpxHwYAIBjhNH0Yy3QofObBCwnCos8uOQvdkEIZct+UAd4oF4MQgW6z/xA1fS1P2Cl76JaxDWISagzw918TYXIN9BIQhAo7PaysoOdJR8FTJXoJE/J+hguaTsATw7HegJHI5vaDVYV9sT539sSzyrKEHHE482f5PxvpSrv7jViV/Oya3hnVHbOM4SwUWdkFU+Ce+P1iuyuf3NYZUxUjRfmowrIvjVUhNc8WOmjB7SZiZ0rPcGjt5T78KPC4CJzVOqP6UxcPRfZmcRcNmy3MsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UGoxi6OasbJKZWupYH/b7E9WsFXUfQoXnEfA2dnLU8Y=;
 b=MI6Vwxp/kRXaWqe8o+gIXMgaNlqWbkD0xz1RHSCATPMQDcy9xeAeyzMvpoKR+vhy8SmdifX1b3rGx7PGWHojypqHRPPoBVLbicRKfuGcicvYvpa7yNUDXFEYVNqnUmtLfLUYVbB1zHHKao7SwxDLkC6yr/VIOBcVp3lqKXuBeTA=
Authentication-Results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5501.namprd11.prod.outlook.com (2603:10b6:5:39d::23)
 by DM5PR11MB1881.namprd11.prod.outlook.com (2603:10b6:3:113::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.21; Tue, 20 Jul
 2021 07:23:37 +0000
Received: from DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::5d0c:2e2e:b7e7:eb3b]) by DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::5d0c:2e2e:b7e7:eb3b%8]) with mapi id 15.20.4331.034; Tue, 20 Jul 2021
 07:23:37 +0000
To: "Navare, Manasi" <manasi.d.navare@intel.com>
References: <20210714223414.9849-1-manasi.d.navare@intel.com>
 <9fb23633-cbeb-b4c8-d548-95323c7a71b3@intel.com>
 <20210719185840.GA30216@labuser-Z97X-UD5H>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <7e483a82-b997-4eb1-d585-484fc98b3914@intel.com>
Date: Tue, 20 Jul 2021 12:53:23 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.12.0
In-Reply-To: <20210719185840.GA30216@labuser-Z97X-UD5H>
Content-Language: en-US
X-ClientProxiedBy: PN0PR01CA0036.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:4e::11) To DM4PR11MB5501.namprd11.prod.outlook.com
 (2603:10b6:5:39d::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.107] (49.207.224.57) by
 PN0PR01CA0036.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:4e::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4331.26 via Frontend Transport; Tue, 20 Jul 2021 07:23:36 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 76363d58-ec61-4c16-aeff-08d94b4f4aa1
X-MS-TrafficTypeDiagnostic: DM5PR11MB1881:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM5PR11MB1881D3974E4DDE64F256A123CEE29@DM5PR11MB1881.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: A+mHqygmoBkgO0OYYTDuE+vLAwPtdNjsbj3M49X22I5wdzGKomZ9m6A8CGkRu1/S1JUvlYi0RoYiI+GlFNUUcnKV3nGIEqMHa+yq8S0j9YzYIJMTnTCAoti4w3qfM98ifacs9DKgsmS2KNHEh1dDifyz6Rouafd9pBvU/CP6zjhZNAgXy8VtH1sBzRW+jgWGrrd7G8FgrtnIEvBS3AuSVJgv221lrm/IMbsQtuFyYl0UxPfAxZjfheaAStQb/CpT8Yz6n+WsSNhmCLQyJ08ykJ68x7muxi8C2s9hdEOkYJlOLOBfXF7lZeEm4+CD16tZwALfLYDvMUq7XW1jcf12FWNBEj6sieSPpLpFI15ISuNzSlHElxeZwjKzcqL0tfwijiFK4CRWuaRMbcaNWPHIcLJzYXI9fF1IGIfPPYaSoELQeyDtOSZRHW89wMRy0movpi4Z3Vb24wr8ZKsp0D68Rcnm6IU9xoKgKeavGlsuDTXrHdp/MuwkUoB0TQJKA7M8bnD8pOx2kGlTxLZ5IJRYVBL9q87UjB9o/JA6xg2SboqFyFQkyPVBkW2mUStGpPbZXs9ww+FIktzHrZHPxAYCmk8zStbD1DAtSFZQtyysWsyzHLufrL8SgJTo5Qv9jK45GR8Roch8pNN3MQp0t5FYQ8sWlHdSsqu2OWnh+fZHxb8tgPF0/w03mq6nlK417r6rMbaLcrXm5zxofO1dj8Dlb08dmLaMAasW7nuDrl7gbRo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5501.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(346002)(39860400002)(136003)(396003)(376002)(478600001)(966005)(53546011)(4326008)(83380400001)(6862004)(37006003)(6486002)(66556008)(16576012)(316002)(66476007)(31686004)(1006002)(66946007)(6666004)(26005)(55236004)(186003)(66574015)(36756003)(2906002)(6636002)(956004)(8676002)(38100700002)(5660300002)(2616005)(31696002)(86362001)(8936002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aXlNQU9VWE5DVHlBRTdGcUR4dWVYWkdmdWY1MTQrWU9hT2pVUTR0eDNxb2hy?=
 =?utf-8?B?MDJuOUZ4RXI3N0NWa0cyVExZazhSQjdma2t4NHcvNHhQbnJoWHlyMFRYclRP?=
 =?utf-8?B?NWZXQUpXYUpmSmtQb1R0QTRhVDF2L0l0STZPdk9jM213WW9rMVB4RHkveGpk?=
 =?utf-8?B?L3piNjBITEY1M0JsSTZwTE1LelJnQTI5dk1SWGloTXRFdXlPYVZTNjI2bW5k?=
 =?utf-8?B?NWpHbVg5TlVjclRMZ2h1SlVLOS8rZnpLSGhhUVh0a3JwdEh4WXo5T0JLZVJ1?=
 =?utf-8?B?QkY2dzRPVTRXQ29GUlAvKzRrZEMySEZZeXNPSXNPZDh0SUNURlQrNCtWTFBr?=
 =?utf-8?B?M2pZT2RXOGZKdFJLdExsMWUxeTBWdWRqU1NFMTBLcFVONmN3aktBc3BManFO?=
 =?utf-8?B?MUw5SkRRcytaOGlBakwrK2lleXhuNEs1aDg0UTRYY3hYZlIzblBaNEhpRVUr?=
 =?utf-8?B?ZG9QZXBIYStTK3lERk5EN0UzVSs3Q0NDeXlMRVNkRUsvTEtTSU42VDg2SXFI?=
 =?utf-8?B?WHk3bzVlejllMXIrQzdCeXcvbndZeUh2Z2cxa2VEajllRElMaU56K0VpU3Rh?=
 =?utf-8?B?M01OaXhZQVVhd0x4RmJJNllyK2VaSC9GUkNrZFFGSzFYSUxCUjNpWG9rV3Bh?=
 =?utf-8?B?a1Rac0VjbURmbGdGYmF3VWk3aWxFcEJqTkFrR29tdHVneWFqNHpzQzJUL2Zk?=
 =?utf-8?B?SVArUk9Jei9hbk9WeTdrOXRUMzFNYkF3L2xRYncxWVJsK2I3bUJkeCtWY20v?=
 =?utf-8?B?MXlleUFWTk5XQVdRZzA0MHFob2MybWpvOGRjdElUVENXN1BDZXVQbUJjQTRM?=
 =?utf-8?B?U0p4SDVyQ3ljWW0yVEhpOE80THlpOFAxRHVCS21oYzlYQWZzekR3WDV6VU12?=
 =?utf-8?B?SWRGU29lcHVPMHIwSVVUL04zdHh1WWYwOUpnQ1JtVTM5Q0xaakZOVjJ2L0Vr?=
 =?utf-8?B?SzB6RjUxcFl1VEsyL3NqZXIySTF2eXFkSmpOMHZwOHlJcldqOUwreXJ0azNX?=
 =?utf-8?B?SlFlM2M2eXFrRU04WFpFQjIzaGdyQk9iMk01T2RkZDB2d3p1dnI2VEV0NE9T?=
 =?utf-8?B?eFY3QWx1YWl5cFVka1VQQmJ0NkwwWVA0MndpOE1mQlRxejMvRks5bG1SUXhC?=
 =?utf-8?B?L2thQXZEUENidzZGL0xpRGcrc2N6OVRZdzQ0NzhCYXR6eXQ4cGg3VCtseGo2?=
 =?utf-8?B?VTFBTzV3ZTFSWkJHaDlTWWQ0S2JKeXkyb3hJazIrSklKL1VrTllaS0VvSFFy?=
 =?utf-8?B?dlNuc1ZKUXpVQTBTUVpsemIyY1ZVNGxjWC9lVjdBNWE1WDFPeVhMRWxIQmU0?=
 =?utf-8?B?VHI2bWZTOXBEaUU2TFloR2NQbzR5VWh5MWJLRXFQUERmUitrcWcrbkNXbVc2?=
 =?utf-8?B?SnRTcWNmTXRZRG1TTis4REIxR2UwOFJFZDlYNldOT1ZtTFJPajBzNk5JQ25Q?=
 =?utf-8?B?Q0hIb3Y4R1Fnc0lRZE9CRks5Nkt5TE1yOStEUHVFOUZ6UVdocXlqUXdWMVUr?=
 =?utf-8?B?R2NoYkJWaXpkYjZKSGJXNVdub0FaVzhqK09oOXpvYVVTSm1tWVZLSFBENTlq?=
 =?utf-8?B?OHJpWFZRUmlXZkFKVUIrdFRHZjFRTHhTK2xJQ3djRmtHT0JMTFpSSDZhazRw?=
 =?utf-8?B?YmNFRjRKbHptY0N6VG15dTJuQUo0YzJSbHphdWVTenJPMk1EUTVDUkprWTVt?=
 =?utf-8?B?YmhtcVBNOGxFNTNwWHh3Mmx5RFdsUEU5c2tmMFB3T2paTlhyQ3JKUmo2ZFY5?=
 =?utf-8?Q?mCM30i8+YGIlUokE7O49Y5G+w63XPuPWlZZE5Vf?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 76363d58-ec61-4c16-aeff-08d94b4f4aa1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5501.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jul 2021 07:23:37.7310 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KdIsgITJmLDUxB1Vgj7ZaUf3DrOr8w7zMgdqyVeqZWs9pyNOosYtCOrIrTccDZqgTsIzyLe2Qby6V8bLi3yThSGWe/7JW6W8s2bf4UUm0kE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1881
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix shared dpll mismatch
 for bigjoiner slave
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDcvMjAvMjAyMSAxMjoyOCBBTSwgTmF2YXJlLCBNYW5hc2kgd3JvdGU6Cj4gT24gTW9uLCBK
dWwgMTksIDIwMjEgYXQgMTE6NDc6NTFBTSArMDUzMCwgTmF1dGl5YWwsIEFua2l0IEsgd3JvdGU6
Cj4+IFBhdGNoIGxvb2tzIGdvb2QgdG8gbWUuCj4+Cj4+IFBsZWFzZSBmaW5kIGJlbG93IHNvbWUg
c3VnZ2VzdGlvbnMKPj4KPj4gT24gNy8xNS8yMDIxIDQ6MDQgQU0sIE1hbmFzaSBOYXZhcmUgd3Jv
dGU6Cj4+PiBDdXJyZW50bHkgd2hlbiB3ZSBkbyB0aGUgSFcgc3RhdGUgcmVhZG91dCwgd2UgZG9u
dCBzZXQgdGhlIHNoYXJlZCBkcGxsIHRvIE5VTEwKPj4+IGZvciB0aGUgYmlnam9pbmVyIHNsYXZl
IHdoaWNoIHNob3VsZCBub3QgaGF2ZSBhIERQTEwgYXNzaWduZWQuIFNvIGl0IGhhcwo+Pj4gc29t
ZSBnYXJiYWdlIHdoaWxlIHRoZSBIVyBzdGF0ZSByZWFkb3V0IGlzIE5VTEwuIFNvIGV4cGxpY2l0
bHkgcmVzZXQKPj4+IHRoZSBzaGFyZWQgZHBsbCBmb3IgYmlnam9pbmVyIHNsYXZlIHBpcGUuCj4+
Pgo+Pj4gQnVnOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNz
dWVzLzM0NjUKPj4+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPgo+Pj4gQ2M6IEFua2l0IE5hdXRpeWFsIDxhbmtpdC5rLm5hdXRpeWFsQGludGVsLmNv
bT4KPj4+IFRlc3RlZC1CeTogU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4K
Pj4gY2hlY2twYXRjaCB3YXJuaW5nIGFib3V0IHRlc3RlZC1ieSB0YWcuCj4+PiBTaWduZWQtb2Zm
LWJ5OiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgo+Pj4gLS0tCj4+
PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNCArKysr
Cj4+PiAgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKPj4+Cj4+PiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+Pj4gaW5kZXggNjVkZGI2Y2Ex
NmU2Li5jMjc0YmZiOGU1NDkgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKPj4+IEBAIC05MDA2LDYgKzkwMDYsMTAgQEAgdmVyaWZ5X2Ny
dGNfc3RhdGUoc3RydWN0IGludGVsX2NydGMgKmNydGMsCj4+PiAgIAlpZiAoIW5ld19jcnRjX3N0
YXRlLT5ody5hY3RpdmUpCj4+PiAgIAkJcmV0dXJuOwo+Pj4gKwlpZiAobmV3X2NydGNfc3RhdGUt
PmJpZ2pvaW5lcl9zbGF2ZSkKPj4+ICsJCS8qIE5vIFBMTHMgc2V0IGZvciBzbGF2ZSAqLwo+Pj4g
KwkJcGlwZV9jb25maWctPnNoYXJlZF9kcGxsID0gTlVMTDsKPj4+ICsKPj4gdGhlcmUgaXMgYSBj
aGVjayBmb3IgYmlnam9pbmVyX3NsYXZlLCBjb3VwbGUgb2YgbGluZXMgYWJvdmUgdGhpczoKPj4K
Pj4gaWYgKG5ld19jcnRjX3N0YXRlLT5iaWdqb2luZXJfc2xhdmUpCj4+ICDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgbWFzdGVyID0gbmV3X2NydGNfc3RhdGUtPmJpZ2pvaW5lcl9saW5r
ZWRfY3J0YzsKPj4KPj4gUGVyaGFwcyBpdCB3aWxsIG1ha2Ugc2Vuc2UgdG8gY2x1YiB0aGUgc2V0
IHNoYXJlZF9kcGxsIHRvIE5VTEwsIGFsb25nIHdpdGgKPj4gdGhlc2UgbGluZXMuCj4gWXVwLCB0
aGF0cyB3aGVyZSBJIHdhcyByZXNldHRpbmcgaW4gZWFybGllciBwYXRjaCBidXQgdGhlbiBpdCBh
Y3R1YWxseSBnZXRzIG92ZXJyaWRkZW4gaW4gYSBmdW5jdGlvbiBjYWxsCj4gYWZ0ZXIgdGhpcyBw
b2ludCBzbyBuZWVkIHRvIHJlc2V0IGl0IGFmdGVyIHNlcGFyYXRlbHkuCj4KPiBNYW5hc2kKCllv
dSBhcmUgcmlnaHQuIEkgbWlzc2VkIHRoYXQsIHBpcGVfY29uZmlnIGdldHMgb3ZlcndyaXR0ZW4g
anVzdCBiZWZvcmUgCnRoaXMgcG9pbnQsIHNvIHRoZSBjaGFuZ2UgaXMgYXQgdGhlIHJpZ2h0IHBs
YWNlLgoKUmVnYXJkcywKCkFua2l0CgoKPgo+PiBJbiBhbnkgY2FzZToKPj4KPj4gUmV2aWV3ZWQt
Ynk6IEFua2l0IE5hdXRpeWFsIDxhbmtpdC5rLm5hdXRpeWFsQGludGVsLmNvbT4KPj4KPj4+ICAg
CWludGVsX3BpcGVfY29uZmlnX3Nhbml0eV9jaGVjayhkZXZfcHJpdiwgcGlwZV9jb25maWcpOwo+
Pj4gICAJaWYgKCFpbnRlbF9waXBlX2NvbmZpZ19jb21wYXJlKG5ld19jcnRjX3N0YXRlLApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
