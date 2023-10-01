Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F004D7B4708
	for <lists+intel-gfx@lfdr.de>; Sun,  1 Oct 2023 12:53:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D225110E0E7;
	Sun,  1 Oct 2023 10:53:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B9E410E0E7
 for <intel-gfx@lists.freedesktop.org>; Sun,  1 Oct 2023 10:53:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696157622; x=1727693622;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=OMBvbT2EMs0SZwjCvuyp8Pe6spSfG/EXjx+yuEFjuBQ=;
 b=BVu0zjOIeJYvVYLOIdaC2qbFWgXZzBBIEIS7s5D3q3nlDk7N6hasmP4J
 jfhl1m8yiGnUmXceLN2VfnchstHGSCGaN5pXsl1TH4Tx1hrtWLZA91TtP
 Re2C38OV0/uGL9c8cIQ5zRodF9ru9cDtlgRvORonajxmQm3CQUmDjvtlp
 JnfEgNHHRRfKwTub5yt1N1wKiRFQ8KXYzbZdod+lXvj/+KGBs2yGk9GcS
 UOk4Hla8Tyb6U7cMX3GGNIm0MXOpjxGyWG5FjIsXwiaPoXnjm8zMdirCf
 MeBZ2IEwZywkgVUVPakh1eLs/dzaloFkae54M3X79tRVAMmGsxDgjAtK5 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10849"; a="385344875"
X-IronPort-AV: E=Sophos;i="6.03,191,1694761200"; d="scan'208";a="385344875"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2023 03:53:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10849"; a="753799407"
X-IronPort-AV: E=Sophos;i="6.03,191,1694761200"; d="scan'208";a="753799407"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Oct 2023 03:53:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sun, 1 Oct 2023 03:53:40 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Sun, 1 Oct 2023 03:53:40 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Sun, 1 Oct 2023 03:53:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UZia8RD1zfgI1sesdFotRY+DjEnVeh5Qzxrbfcs3KGSQlCRUk1BJnDIBw8JHYPWR1dY35btp5cKuMFq6yJj91fV8nL1BHTMvUDOejVrdNxPYnbFflSVyH+tr3xCIZY2xCBpmbQg/OwgqHUDou6ZhbHB3pjVWAw5NPgLzfxFCwYLGlbJBexuW1YirjF/0Ihsdc0lqgOND/j0MuaEWfoaJ7RMBrPiDYWt8eI9z38HuM/KzxzY0JyzmUBsfZ86u8flYIrPjrFvoNqefF7iwOT2575EjSDSWcHjfAz+KTBSa3w/y8ll9JUWLEXtB0VIz5pwN4GshKkgvRwzXZBpasHuiiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OMBvbT2EMs0SZwjCvuyp8Pe6spSfG/EXjx+yuEFjuBQ=;
 b=iS2IQweACcLQfSSjKsBHv3Sa0fXyNP6+M05OlxdiKlDn4PuRY7o3MaILtZCFfEIh1Erehhig36nFgd0dWRWvkgxMH6YTFc2vew2Sta1ejU82UQNIm56qQE8LOKacbuF7EtzWefEcHh5wjacvijPkoxTzOYi81eXKygYmlTwEtC63vk75//4cdu7+yw5ByDLKFF1KF+AYIp5R7qMmw9CqEbAsull1ozErRDM5hBN6NfexygYLU9iS69x4fyBIqWj6kNgDQMZX+Ka591CoSr9mHND+/VkRl0O3avuT12qC5kr8e69KMo8xy1rmZ9/m3dm3Wfwdex8MM7P0BJUrpfby5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) by
 IA1PR11MB7753.namprd11.prod.outlook.com (2603:10b6:208:421::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.25; Sun, 1 Oct
 2023 10:53:38 +0000
Received: from DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::991e:61fd:6963:57a5]) by DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::991e:61fd:6963:57a5%5]) with mapi id 15.20.6838.029; Sun, 1 Oct 2023
 10:53:38 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/5] drm/i915/fbc: Split plane stride checks
 per-platform
Thread-Index: AQHZ5wAlv21WUtlG8U6OTblTdoNowrA03HoA
Date: Sun, 1 Oct 2023 10:53:37 +0000
Message-ID: <9eb7236c1b81fe534032e94bbb43b20dd2a7e879.camel@intel.com>
References: <20230914113854.10008-1-ville.syrjala@linux.intel.com>
 <20230914113854.10008-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20230914113854.10008-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7785:EE_|IA1PR11MB7753:EE_
x-ms-office365-filtering-correlation-id: 93d5f09e-0497-45b0-688e-08dbc26caa80
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TsmeYk6KHclfijL/nL1Q6/wYDB8ficm25yLaOvI6Qmha4CHGrmAjLaMTr//v7+VzfNL4o+89aSDunW94BN2BkYhXmhUwLZaFmppE0TY0puhf6Z1nraKDvNdkaU/nqdvlQcidcgvZKrxeqFN6yF2EDaI8FsN2xpO5P1qC5Zz4UxCt1BRcWNsqAja4LovGEWkIWg2MsPkDEA/SN6ORWbHYQy7jOB5toFLwiGxtJDgHgRHlOJgCxH9+mFHFx/co+vDspPCY4hyNkevKXPFWDmzXXZoAY96f8cewyqhyw0zCwD6UR2l0lmpgAD+X3mh0/1D/TVu2WyjZoRf6uyz8TT8ZgVxPmIDgaYSMeURzskBT+FV7RxXK3ItaLEAYRNpF7QVGv9ILx5MoANpF3yAvuGD99H3d54kbq7F6jD5CF7eK4SJNeWbzkNZWLGt6i+UXAa3wZ9vdrImme5s9y8LFff6BlshuabfjNSKwnr4aNQL27qMN3dKE9WOhjkiFxpDjnRTeJP7y7+Jj1mVlKULRFgnv60JDtI2cnc66nvRs1edeWyBqKEc11RlsPBxksTYmhJaoQqAgvTdnEQgzr/owH+L8wayybNmFj9JfEHFq6MxpeQQDz+pkaTHP65kHynjKX8Y7
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7785.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(136003)(346002)(376002)(39860400002)(230922051799003)(1800799009)(186009)(451199024)(64100799003)(6512007)(82960400001)(6506007)(6486002)(122000001)(26005)(8936002)(38100700002)(5660300002)(41300700001)(8676002)(2616005)(2906002)(86362001)(316002)(110136005)(76116006)(66556008)(66476007)(66946007)(91956017)(36756003)(64756008)(66446008)(71200400001)(478600001)(38070700005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZU4zME1LeERsdU9NYkh0WUpXRHNZUmRUNzd2Y0d0VkRmVHlBcmduUlppZTAv?=
 =?utf-8?B?RFh5akhrU0wwcVhKOXZkZnN5d0F1OWdLaGE3b1FPaDhrUmhxaXZiY0k0alQ3?=
 =?utf-8?B?T2xLS2Evbm93ZG9OTms5RXJ2aFo3YzhOclpVaTEvQ2o1WWhxZG4vQ0JXZHd6?=
 =?utf-8?B?ZWxTcXh2aEY0c0czUnRuUDJ4cFh2VnZwNW41Z09hc2ovWlZoNEtJTmtqRGM5?=
 =?utf-8?B?cGxoQTRWUlErSTlENTNjRUllYXczVEZEQ0RMS1lBdHRyU0pqTTd6K0VKWlVt?=
 =?utf-8?B?S2kzc1dGSlh3Qm5LTEF2N0c4Q0lNYUZucFFUZ3A0ZGZjR1EzR0xhMFFaOVpn?=
 =?utf-8?B?SnZyS2t2NnRhdHAyNE1CQzVPbHdDL0dqMkd3ZkxMeHV6cDk2b0ErOEpkNmFH?=
 =?utf-8?B?ODl5SFkwTEhuWGFMOGttYm5DaWVqV1ZTSzBlWEJ2aTdxQ1NaSFpVVWdOaVhT?=
 =?utf-8?B?c0ZlTUx2WFhZSjRwUWNyeEwvY2tjK2VzR1VwWUVCVWFIOCtKdnVGckRIM05u?=
 =?utf-8?B?ZitLc1RHTlplQTdwM0FxaWVNa0FWRVdKM0xvUnRTTEFQeFVoczdCNmVENDlH?=
 =?utf-8?B?dWpVbUZVaVAwQVBabyt6UFBzK3ZjZVdxbFBGT1BrUkNyTzkxMVZIQzVpNXZx?=
 =?utf-8?B?ZHZieUdGUkFtOGw0LzNEb3pEVy8rMEpSY2lWL0daM3VWUEFUOUM3RmNSeExI?=
 =?utf-8?B?OGRldjMxWktMeHRYd0tvK1dlRk01ZHBxMHAvalRoNm9pM0g4ZVBPRi9VWmpn?=
 =?utf-8?B?UlM2eDBjTllTR29TTmNOYlhxc0tPZFFoTGhyd3dMNXhSZDAzSjVvazJmSVBq?=
 =?utf-8?B?cnlpZEhRS3d1cHd4MlNsS2lrR3pNSFJWVHhvOUU5RVBpekVtekpEdzFzb29C?=
 =?utf-8?B?djBCbm9uRTNxZzdVNXlhL1lpb3pkQVZaenBTdTcvaEJZZW1YdDVsMnJnZkJD?=
 =?utf-8?B?S2NoUVowQXZDNnpFQTduSjdVSnh2aUUySmRxUkxyRDVCT2lKRTJmTm02TXYw?=
 =?utf-8?B?c28vaHpOc1JMM1lVdFl0TzR1S0EwQlJZMHBscGVXM3VkWkNWYzQyeFdLUGdz?=
 =?utf-8?B?YUc0TkRVTTdESS9FcnBMU1RCczRTeFJFUDBwbnlrdC8ra2c2ekErUStKMGhy?=
 =?utf-8?B?cFNpUi90bDYvLy9hQS9RMElpeWN0Rjh1bVZUMmVjY04ydWZwdndkS2I4a056?=
 =?utf-8?B?SHZyb0V5a0JMbmRnay9LMU96UHo3Q3RjM3RZY0VtWmxXSkUzTmhNK1ZhbjVD?=
 =?utf-8?B?NWY2RTM3V3hvOGdpUWxzL2RGb0JUSUdURjJGWWROdll0ZXRCaFlwc0grS1BQ?=
 =?utf-8?B?UWJqeTRzVHVtVjNiN1FMTURpd0lRSit5TW1HdFAyZmxxRnJYbWZZYzRDbXl2?=
 =?utf-8?B?U1hxbFh1NDh3Zk41MkliRHUvRStNNStBR212cTFVem4zUSt6UWtXbysrTTdr?=
 =?utf-8?B?M2VKY2laRnhKTVNNdmx3V1lQMUh6K1RxWVg5SnhvYWRneFY1ZUs4dDliSU5P?=
 =?utf-8?B?bmVENUErK0FOeFNPSlc1UEVjSU5KdmtRQmY3V0c1aFlsRXBPeE9KWmV3Mmtl?=
 =?utf-8?B?aitJaGQ0R2VKdVRNbXFNMHA2VlEvZjBnMWZHdnVWdDNsaFE2NEFBOE4xMWNL?=
 =?utf-8?B?eTRGODZpWVo3UDRJSXpLQVRoMVlVSjA4YW5Xa2tVQ2NIVmZyemlTNDIzcC84?=
 =?utf-8?B?MysvdjJKNnA2UVF5aXJRMTFMbHJQeWpiNDVENEpsMk9LSHd4WXg2dGJoV0kr?=
 =?utf-8?B?UUM0aFhzb0RnM3lydHRCMUlJd3RrdXpkNXlmQTBUQlBvQnh2YTdCdFU3NkdM?=
 =?utf-8?B?cW8zM0RMaHpZSG1tOG81UGw2ck0vZk5GUEYwYWN2OG50ZjBWdjdGcTFZNVF2?=
 =?utf-8?B?VTYxSmhkUk4xRjVIT0Y2cEovdlFQSzBoOFExemIvL3FOcUVwRVJKRmRyWmFK?=
 =?utf-8?B?ZjF1R3VnSDFMS0JQNTNnZzJzWWE5NVVWc1VGRzN2a1ZtTkxWWXZqeUQ2eHFS?=
 =?utf-8?B?b0oyVG1nU25QMEpkallnakFqVVI5NlZYQ3YvQ0VxQmZGaVVjN203ZWRPVk1U?=
 =?utf-8?B?M09vQTh6UXlKRWd1anNqN1lFY094QlRFWmNQTkN1eVhPbGd4Ui9hWGF2eWU5?=
 =?utf-8?B?Mml6dWFQcWNUSmlydXJyKzhKM3NwRWRJb1NDQktCYW1HZFpSQXhLRzBqdTRT?=
 =?utf-8?Q?c0PKN6pOn3X6vHo5xPTJPS8=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <560CAD511CEA774480E46069AE66E6F1@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7785.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 93d5f09e-0497-45b0-688e-08dbc26caa80
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2023 10:53:37.5653 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: V+lBMsoJH6qGlyP83sTmQyAaYLZYuE0Cd8Qn3RsLKAOy/y2FaRAoUvDST2mLrx3kjmfVxn7D9VkK+d7FG2cd7JTZzlbL1cHKjXykxfOU1Fc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7753
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/fbc: Split plane stride checks
 per-platform
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

SGkgVmlsbGUsCgoKT24gVGh1LCAyMDIzLTA5LTE0IGF0IDE0OjM4ICswMzAwLCBWaWxsZSBTeXJq
YWxhIHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+Cj4gCj4gQ2FydmUgdXAgc3RyaWRlX2lzX3ZhbGlkKCkgaW50byBwZXItcGxhdGZv
cm0gdmFyaWFudHMgdG8KPiBtYWtlIGl0IGVhc2llciB0byBzZWUgd2hhdCBsaW1pdHMgYXJlIGFj
dHVhbGx5IGJlaW5nIGltcG9zZWQuCj4gCj4gVE9ETzogbWF5YmUgZ28gZm9yIHZmdW5jcyBsYXRl
cgo+IAo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+Cj4gLS0tCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2ZiYy5jIHwgNjggKysrKysrKysrKysrKysrKysrLS0tLS0tCj4gwqAxIGZpbGUgY2hhbmdlZCwg
NTEgaW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2ZiYy5jCj4gaW5kZXggMWIzMzU4YTBmYmZiLi40YzQ2MjZjODQ2NjYg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKPiBAQCAtODQ4
LDYgKzg0OCw0NyBAQCB2b2lkIGludGVsX2ZiY19jbGVhbnVwKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1KQo+IMKgwqDCoMKgwqDCoMKgwqB9Cj4gwqB9Cj4gwqAKPiArc3RhdGljIGJvb2wg
aTh4eF9mYmNfc3RyaWRlX2lzX3ZhbGlkKGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAq
cGxhbmVfc3RhdGUpCj4gK3sKPiArwqDCoMKgwqDCoMKgwqBjb25zdCBzdHJ1Y3QgZHJtX2ZyYW1l
YnVmZmVyICpmYiA9IHBsYW5lX3N0YXRlLT5ody5mYjsKPiArwqDCoMKgwqDCoMKgwqB1bnNpZ25l
ZCBpbnQgc3RyaWRlID0gaW50ZWxfZmJjX3BsYW5lX3N0cmlkZShwbGFuZV9zdGF0ZSkgKgo+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBmYi0+Zm9ybWF0LT5jcHBbMF07Cj4gKwo+ICvC
oMKgwqDCoMKgwqDCoHJldHVybiBzdHJpZGUgPT0gNDA5NiB8fCBzdHJpZGUgPT0gODE5MjsKPiAr
fQo+ICsKPiArc3RhdGljIGJvb2wgaTk2NV9mYmNfc3RyaWRlX2lzX3ZhbGlkKGNvbnN0IHN0cnVj
dCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCj4gK3sKPiArwqDCoMKgwqDCoMKgwqBj
b25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiA9IHBsYW5lX3N0YXRlLT5ody5mYjsKPiAr
wqDCoMKgwqDCoMKgwqB1bnNpZ25lZCBpbnQgc3RyaWRlID0gaW50ZWxfZmJjX3BsYW5lX3N0cmlk
ZShwbGFuZV9zdGF0ZSkgKgo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBmYi0+Zm9y
bWF0LT5jcHBbMF07Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoHJldHVybiBzdHJpZGUgPj0gMjA0OCAm
JiBzdHJpZGUgPD0gMTYzODQ7Cj4gK30KPiArCj4gK3N0YXRpYyBib29sIGc0eF9mYmNfc3RyaWRl
X2lzX3ZhbGlkKGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCj4g
K3sKPiArwqDCoMKgwqDCoMKgwqByZXR1cm4gdHJ1ZTsKPiArfQo+ICsKPiArc3RhdGljIGJvb2wg
c2tsX2ZiY19zdHJpZGVfaXNfdmFsaWQoY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpw
bGFuZV9zdGF0ZSkKPiArewo+ICvCoMKgwqDCoMKgwqDCoGNvbnN0IHN0cnVjdCBkcm1fZnJhbWVi
dWZmZXIgKmZiID0gcGxhbmVfc3RhdGUtPmh3LmZiOwo+ICvCoMKgwqDCoMKgwqDCoHVuc2lnbmVk
IGludCBzdHJpZGUgPSBpbnRlbF9mYmNfcGxhbmVfc3RyaWRlKHBsYW5lX3N0YXRlKSAqCj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGZiLT5mb3JtYXQtPmNwcFswXTsKPiArCj4gK8Kg
wqDCoMKgwqDCoMKgLyogRGlzcGxheSBXQSAjMTEwNTogc2tsLGJ4dCxrYmwsY2ZsLGdsayAqLwo+
ICvCoMKgwqDCoMKgwqDCoGlmIChmYi0+bW9kaWZpZXIgPT0gRFJNX0ZPUk1BVF9NT0RfTElORUFS
ICYmIHN0cmlkZSAmIDUxMSkKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJu
IGZhbHNlOwo+ICsKPiArwqDCoMKgwqDCoMKgwqByZXR1cm4gdHJ1ZTsKPiArfQo+ICsKPiArc3Rh
dGljIGJvb2wgaWNsX2ZiY19zdHJpZGVfaXNfdmFsaWQoY29uc3Qgc3RydWN0IGludGVsX3BsYW5l
X3N0YXRlICpwbGFuZV9zdGF0ZSkKPiArewo+ICvCoMKgwqDCoMKgwqDCoHJldHVybiB0cnVlOwo+
ICt9Cj4gKwo+IMKgc3RhdGljIGJvb2wgc3RyaWRlX2lzX3ZhbGlkKGNvbnN0IHN0cnVjdCBpbnRl
bF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCj4gwqB7Cj4gwqDCoMKgwqDCoMKgwqDCoHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShwbGFuZV9zdGF0ZS0+dWFwaS5wbGFu
ZS0+ZGV2KTsKPiBAQCAtODU5LDIzICs5MDAsMTYgQEAgc3RhdGljIGJvb2wgc3RyaWRlX2lzX3Zh
bGlkKGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCj4gwqDCoMKg
wqDCoMKgwqDCoGlmIChkcm1fV0FSTl9PTl9PTkNFKCZpOTE1LT5kcm0sIChzdHJpZGUgJiAoNjQg
LSAxKSkgIT0gMCkpCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gZmFs
c2U7Cj4gwqAKPiAtwqDCoMKgwqDCoMKgwqAvKiBCZWxvdyBhcmUgdGhlIGFkZGl0aW9uYWwgRkJD
IHJlc3RyaWN0aW9ucy4gKi8KPiAtwqDCoMKgwqDCoMKgwqBpZiAoc3RyaWRlIDwgNTEyKQo+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gZmFsc2U7CklzIHRoaXMgY2hlY2sg
bm90IHJlcXVpcmVkIGFueW1vcmUgZm9yIElDTCsgYW5kIEc0eD8KCj4gLQo+IC3CoMKgwqDCoMKg
wqDCoGlmIChESVNQTEFZX1ZFUihpOTE1KSA9PSAyIHx8IERJU1BMQVlfVkVSKGk5MTUpID09IDMp
Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBzdHJpZGUgPT0gNDA5NiB8
fCBzdHJpZGUgPT0gODE5MjsKPiAtCj4gLcKgwqDCoMKgwqDCoMKgaWYgKERJU1BMQVlfVkVSKGk5
MTUpID09IDQgJiYgIUlTX0c0WChpOTE1KSAmJgo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoCAoc3Ry
aWRlIDwgMjA0OCB8fCBzdHJpZGUgPiAxNjM4NCkpCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoHJldHVybiBmYWxzZTsKPiAtCj4gLcKgwqDCoMKgwqDCoMKgLyogRGlzcGxheSBXQSAj
MTEwNTogc2tsLGJ4dCxrYmwsY2ZsLGdsayAqLwo+IC3CoMKgwqDCoMKgwqDCoGlmICgoRElTUExB
WV9WRVIoaTkxNSkgPT0gOSB8fCBJU19HRU1JTklMQUtFKGk5MTUpKSAmJgo+IC3CoMKgwqDCoMKg
wqDCoMKgwqDCoCBmYi0+bW9kaWZpZXIgPT0gRFJNX0ZPUk1BVF9NT0RfTElORUFSICYmIHN0cmlk
ZSAmIDUxMSkKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGZhbHNlOwo+
IC0KPiAtwqDCoMKgwqDCoMKgwqByZXR1cm4gdHJ1ZTsKPiArwqDCoMKgwqDCoMKgwqBpZiAoRElT
UExBWV9WRVIoaTkxNSkgPj0gMTEpCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJl
dHVybiBpY2xfZmJjX3N0cmlkZV9pc192YWxpZChwbGFuZV9zdGF0ZSk7Cj4gK8KgwqDCoMKgwqDC
oMKgZWxzZSBpZiAoRElTUExBWV9WRVIoaTkxNSkgPj0gOSkKPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgcmV0dXJuIHNrbF9mYmNfc3RyaWRlX2lzX3ZhbGlkKHBsYW5lX3N0YXRlKTsK
PiArwqDCoMKgwqDCoMKgwqBlbHNlIGlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSA1IHx8IElTX0c0
WChpOTE1KSkKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGc0eF9mYmNf
c3RyaWRlX2lzX3ZhbGlkKHBsYW5lX3N0YXRlKTsKPiArwqDCoMKgwqDCoMKgwqBlbHNlIGlmIChE
SVNQTEFZX1ZFUihpOTE1KSA9PSA0KQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBy
ZXR1cm4gaTk2NV9mYmNfc3RyaWRlX2lzX3ZhbGlkKHBsYW5lX3N0YXRlKTsKPiArwqDCoMKgwqDC
oMKgwqBlbHNlCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBpOHh4X2Zi
Y19zdHJpZGVfaXNfdmFsaWQocGxhbmVfc3RhdGUpOwpBbHNvIEkgZ3Vlc3Mgd2UgIGNvdWxkIHBh
c3MgInN0cmlkZSIgYXMgcGFyYW1ldGVyIHRvIHRoZXNlIGZ1bmN0aW9ucyBmb3IgY2xhcml0eSBh
bmQgc2ltcGxpZnkuCgpUaGVyZSBhcyBzb21lIElHVCBDSSBmYWlsdXJlcyByZWxhdGVkIHRvIGJh
ZF9zdHJpZGUgdGVzdHMuCgpCUgpWaW5vZAo+IMKgfQo+IMKgCj4gwqBzdGF0aWMgYm9vbCBwaXhl
bF9mb3JtYXRfaXNfdmFsaWQoY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9z
dGF0ZSkKCg==
