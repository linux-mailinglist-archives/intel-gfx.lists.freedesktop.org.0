Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA7357D99A
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jul 2022 06:26:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E96E1126DE;
	Fri, 22 Jul 2022 04:26:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82ACE11300F
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jul 2022 04:26:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658463990; x=1689999990;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qYgro0jpEf196uCVaO8oxRLE4cO/muIpGpZgekzsLjs=;
 b=d6/rJBJwrcbZZw/PVKtvWzOWo7ONva564GvY73MM7s6MuMK7Kv1+ZrT4
 yUforD1ff/mMXUU1MDpPhc4hQq3Xqxv+jK3K02jCmzisYkO7mWwu5Cu8X
 /WyLyCjXxBpBi0tlnQFsd9TjbIVcEquRyl641H/HqgXN6sGm2cvEQ7vIi
 PIoPmuenjA8ylNWwoRQ7DT34IWX/QkWWjymjS4TRcgqouJ/PhmjYHwx+j
 KQmQOrtsH/lwRv8PcwC6eayrbzmFjysWFyY2BsShCjZy12tQSJ5WsgJau
 GCjMXefUTiNYd1veoY0as6El+OIfTA+/d4GX5H3qdNUhg+rRq3dkEgOf0 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10415"; a="348935767"
X-IronPort-AV: E=Sophos;i="5.93,184,1654585200"; d="scan'208";a="348935767"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 21:26:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,184,1654585200"; d="scan'208";a="740921601"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 21 Jul 2022 21:26:23 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 21 Jul 2022 21:26:22 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 21 Jul 2022 21:26:22 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 21 Jul 2022 21:26:22 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 21 Jul 2022 21:26:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TgwBtOcUbT3/ixvQLVMv+dyoANqpvN30NzoxfzMbI59tPeYgKvGecTpOIzEtH38JMknQOesYWuGuK6bs6guleqz0wpknxtvTvS3Wf6HlQ09pTSfw5Aq5PSlj36cxfFV+3Hjc1aeMimJcALonNYyfLltyiCKSLla0DZbITE0HE0so1VFkSQd7mmqXi+y+5UlRETZDZaGxIJL3KAJYP8IvaUrYiGbKe+dngpwrvV5g+Sa35c0Lj65GMtVnUp9QadbOwOT6k5SHyz10waCiBwhEDlnEHsIAesHK67nnU/XSTVagba932KAx3JjmBuQpNF736Iel6QvNFL2YR9/mSZy6Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qYgro0jpEf196uCVaO8oxRLE4cO/muIpGpZgekzsLjs=;
 b=QDCpNAdKgpVbBdhhJ0sKcmzy2rKBAU2LrQ1fLu54pHcBLRi/GvI53PTRrlG01t6OcaZpx35xWP4CqEikQYpyk97mq0AgGpoMu/pjHJ0zFfVnNjeAMhTHYi9Y4KwF6KVIUYmtxKv+eIsPtMgb3dMJ1ttl8DRNmBEtgq1C01WQ9WscJHq8ZPUbBQFaoZnssJ8YANTkyyHJQ8OCitLE7kmj6Q0KXTh/EuSgklvJpXe4RRY3kidOViBvOtTfkTWMH7VUeodPe6KopMKFp54xvhAWKMaKXr2+AGud9cJzx9mrVWaxwyyyGrLr8GVgyK3yKHUZcyr13BW9H7619XIdnSQDDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MWHPR11MB1631.namprd11.prod.outlook.com (2603:10b6:301:10::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5458.18; Fri, 22 Jul 2022 04:26:20 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::d2f:b6c2:74ad:f70d]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::d2f:b6c2:74ad:f70d%7]) with mapi id 15.20.5417.016; Fri, 22 Jul 2022
 04:26:20 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Lee, Shawn C" <shawn.c.lee@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: clear plane color ctl setting when turn full
 plane off
Thread-Index: AQHYlpq8aIK7xe4KlE6AtCOM5PN6Mq2J2Iog
Date: Fri, 22 Jul 2022 04:26:20 +0000
Message-ID: <DM4PR11MB6360363D9B443AAAD7A365C9F4909@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20220713092702.28946-1-shawn.c.lee@intel.com>
In-Reply-To: <20220713092702.28946-1-shawn.c.lee@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 60da52f4-0e64-446f-a615-08da6b9a53eb
x-ms-traffictypediagnostic: MWHPR11MB1631:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tJiCrhjqgVmSLtyyfFYZ2Qy6NmolSEA17qntzpPs7HToM6Pw6oYoaiLQeITj1NCvczmsPU3yxdVZpuUT+CNjP1sWDr7O8TvkpiRtTbtwwS6rKSz+lAGysca/UyLGaZ7DqRdeCr52malmhv1Oc0VoP9r/X89W38jfABesRmbpCFMVGUAWI68CB+RaiKGuq4/JFAugLwRLEiA0dHtgAqTii3swXOdoBC09gAvXmFWMorJSFpZGenOGWSx8Kf6geDhNi7czNbiC5X08aSZ8IMAgAzYT775Jax9ZcWqQl2MPwDB9dX4rSnIemym3qgL3kCB56atoHBUPiV8BsQDn20SjPkf7UB3cowaS3fBlmJ5CuNb4QSTZOfbD5LwTBS2hn9gcPiLujdZpo+zZcn0aFi1repwDlSINOO5qijen9EhI8g+0ziVq3NQ0k5cKxTuJupNEzVuZoruvurfWRoEu1+YKi8M7vRuWTp5xNiKKsM6U16EEiMr7ZZqxZX0uquzH2Od184yYD7y81afq2tHnQlxQ+tkBbPw7g4C5VgrEmsLRbYrRCzh1+gOs70V76zqOi47nJM/f/djR7wKGUJPfscZODRMCaABT3Oj8PepZ3hlruErSwEuXK7WEi3zxif+hxJ1fLJYEJmFcbvhQINTg4xNqwBtkb8eWRCA+MiiQadYnIDB00QPu5DM6fXi9ociQvP/D40p7A068fq3oAcI6fE/rVaaB8xGnkx02swsEHB+xEJN4uuHUEvTDhautTesAK8qTG//b1nnWh5j4BUyOCD+L8SBXPqOTismMYJRZQatbyflnANaJsf4M+gcZnjTIBNbd
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(396003)(366004)(346002)(136003)(376002)(71200400001)(2906002)(6506007)(7696005)(52536014)(38100700002)(41300700001)(8936002)(53546011)(82960400001)(5660300002)(122000001)(4326008)(38070700005)(83380400001)(8676002)(66476007)(54906003)(186003)(478600001)(316002)(26005)(66446008)(76116006)(110136005)(66556008)(66946007)(33656002)(9686003)(55016003)(64756008)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QlBzckg3UGFKMGlPcXFjVmExc1pGQW1odzJPbi9ZNU4vUTN6ZVVmNFUyS04w?=
 =?utf-8?B?bktGVW5jcTVCTjNXSFIrZ09nM1N6NG1mNVNFWmhPL1g3MW9hTWY1dmVsTEpa?=
 =?utf-8?B?Qk5SUjBNMlVLc3ZkdVZJTTNHU0ZQc2hERERCamdBRG1laXVaVGQwL040bE1v?=
 =?utf-8?B?RE5JZlRKQURsOEdnWklTWDJzVXIrUWNJUnB1NXhucFliUXFMQzNvZzN4a2F3?=
 =?utf-8?B?OG1sakFaVTJpOWZycm9zZ1VRSEhzRzkybXliRSs1dm9rTVl5NGphTWpZSGZ6?=
 =?utf-8?B?OTRzR1N0bXFmUi9NSENyY1ZVaXY2bjJBejduRitrYXlobHFhY2l4UHFQaklU?=
 =?utf-8?B?TVFXR2dXODZnb1E0MGdaMmpMdktjd045a0JzVEMyNmhsTWNtWnZDcW5LMXkw?=
 =?utf-8?B?SE5aeWxIblhKNW5mWnRpRk1tZmhvMFZrK1Y5eThCVDhKWmlVclVIb0pMNWls?=
 =?utf-8?B?aDc1bm1CNVdGazJQd0llMXdkekk4RzJxTWhpblVhdEJkSHl0TnJOTU9FOHBG?=
 =?utf-8?B?NVpsdmZVcHY4anZiWnp5b1U4U2V0SElKeFZ4Q2lIVmZmeWR6TzRmZ09wODRt?=
 =?utf-8?B?aEhwbThxdVRpVXhOaGk4aU9SMzllV3VUdXV6RkQvdHo4cGJpWWZaWDdaME5p?=
 =?utf-8?B?R2d3RHk1d3IrTjByQlBLdmZlSytSYTYrZUU2WllzMjRBditXS2pTQzhHM1Uz?=
 =?utf-8?B?NXpWWTlITld3U3FqUlp4WDRCQlFZWlAvclF5MEFvOUlCaml3WURzYUFvSmJQ?=
 =?utf-8?B?ODFhYVlqTGh1NW9WUGpodGF3S2UxSGZ2RjlkMURLMHNBZlR4QWJSaG9rSkNG?=
 =?utf-8?B?a0hhWGE5YW9EV0VLTEZRRHpkZ09HdUF1QlNIMWRWd0U2amQ2ZVBXaktMWkJ0?=
 =?utf-8?B?YVlzeFpXTFRKenZ2UVNtamxnVnJIT21QWGRDeU42azFqNXg0dFFqUjNTamt3?=
 =?utf-8?B?K3JSMTJ0SVlVRmZsanBnUGtFKzNRSlBoU2I4LzZldUdjVVdSWTVXSHR2dWFm?=
 =?utf-8?B?RVF2akE4T2kwZk8yN1BBb2tjT3NoaDlpd0JGK3p3cTBZWFN1ZnQzNkJDTjJC?=
 =?utf-8?B?RXVURktMVkdOR2FteXNCbUZSYk42YWRHK2VHK2dxemhCZldIdUxSTW1lcTVx?=
 =?utf-8?B?aDNRSFdHekJLUndDT3BJYkN2b3lDUG1rbHRYU1FEZ1VCaEpxMTQzNEYrenYr?=
 =?utf-8?B?OVNCcTljdXZaejI4a05xYUpIVW9QUDNRZG1IcytyaHlOTG80NlAwRGpLcEFw?=
 =?utf-8?B?YlltM1pvS0RTdzF5NDM2ditUcWs3VTkyWmZHektUNHBnQUV2SXc0YW9DSUhX?=
 =?utf-8?B?bGZBbDVQQzNOR0NYOFBJd0ZBRndsYTJ0WE5IRDRCQmpGNWliaHBXWUNwYlRj?=
 =?utf-8?B?M0orM1l2ejZjZFBHM1Fyc2Y0emFPZGQwMmVTenU5RmtJZlFQOFgrbFhtbW1B?=
 =?utf-8?B?VHhYU0VhcHlmRDJjVzhmYmdWVStVeFRncFpEcmlIbDBCejV5UE1NREx1SXFL?=
 =?utf-8?B?enRndDdXT09rWW1nbnpFTFcrTzlrM09oNmZBMlZaY0F2VTZVNDJFRFl4V0hJ?=
 =?utf-8?B?QW9XSTRpTVdmTDNreWZUZEZzME5IbVVtVEY2U2N5Wm1YVHBYMENNVnUwcXBP?=
 =?utf-8?B?SExKNG5XbTd6d29lWGVFNGdmVDNxU2c1SkgzakF1b2k3eUdIdzcza280NHp1?=
 =?utf-8?B?SlhucGRKbkdKSFUvR1NlRlVYWXlwNW5UQzFGYU1pNXNWUExtdnk1QzhpUytN?=
 =?utf-8?B?M1B5d1FHWDVnaXJLdXFxMzhuZTM0bnVqTG5OS3E1azgzTHFEV1l2TEVuWHVo?=
 =?utf-8?B?ZE1zMzJrZ1ZaaE8rUmJpTS9PRVpHd2l1L3hacFYzZk4yU29VZ21iRXFNSGxO?=
 =?utf-8?B?cWtJWWxNTVVPa1JNUm5RQWZqaEhTOExaYldZdGF2dmVIN0hKZHpUYmJycjFI?=
 =?utf-8?B?dTNNRitIb1lnbENLV3FFelJPVmY2aEZMdk9iem1JbzcyenZyM0UxRkVCUGlz?=
 =?utf-8?B?V0R6Ti82MUpzNEgxN3h6WEhPaGljNE1BU1NrZFhiNDF1cXVXck5nUFdxQU0r?=
 =?utf-8?B?aW9jeEJiRElxOXh0U3Z2cU9venFPdzdCZm9tVWJTS2cvdlY0cEZuek1CNHFx?=
 =?utf-8?Q?rrCpJ/t0LlwthJN9bspBfJv1y?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60da52f4-0e64-446f-a615-08da6b9a53eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2022 04:26:20.2810 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1izj0O4DL94t+MtbdhHxQ3HBentWcXPnJAlUyla3gm+1I5WGNg3ruE8xHEhM3p0v5OT/WyMLooYTf6DupCUFDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1631
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: clear plane color ctl setting
 when turn full plane off
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
Cc: "Tseng, William" <william.tseng@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTGVlLCBTaGF3biBDIDxz
aGF3bi5jLmxlZUBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVseSAxMywgMjAyMiAy
OjU3IFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBMZWUs
IFNoYXduIEMgPHNoYXduLmMubGVlQGludGVsLmNvbT47IEphbmkgTmlrdWxhDQo+IDxqYW5pLm5p
a3VsYUBsaW51eC5pbnRlbC5jb20+OyBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPjsgU2hhbmthciwNCj4gVW1hIDx1bWEuc2hhbmthckBpbnRlbC5jb20+OyBM
aXNvdnNraXksIFN0YW5pc2xhdg0KPiA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+OyBU
c2VuZywgV2lsbGlhbSA8d2lsbGlhbS50c2VuZ0BpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRD
SF0gZHJtL2k5MTU6IGNsZWFyIHBsYW5lIGNvbG9yIGN0bCBzZXR0aW5nIHdoZW4gdHVybiBmdWxs
IHBsYW5lIG9mZg0KDQpXZSBjYW4gYXBwZW5kICJkaXNwbGF5IiB0byBkcm0vaTkxNQ0KDQo+IEN1
c3RvbWVyIHJlcG9ydCBhYm5vcm1hbCBkaXNwbGF5IG91dHB1dCB3aGlsZSBzd2l0Y2ggZURQIG9m
ZiBzb21ldGltZXMuDQo+IEluIGN1cnJlbnQgZGlzcGxheSBkaXNhYmxlIGZsb3csIHBsYW5lIHdp
bGwgYmUgb2ZmIGF0IGZpcnN0LiBUaGVuIHR1cm4gZURQIG9mZiBhbmQgZGlzYWJsZQ0KPiBIVyBw
aXBlIGxpbmUuIFdlIGZvdW5kIHRoZSBhYm5vcm1hbCBwaXhlbCBjb21lcyBhZnRlciB0dXJuIHBs
YW5lIG9mZi4gQ2xlYXIgcGxhbmUNCj4gY29sb3IgY3RsIHJlZ2lzdGVyIHdoZW4gZHJpdmVyIGRp
c2FibGUgcGxhbmUgY2FuIHNvbHZlIHRoaXMgc3ltcHRvbS4NCg0KQ2hhbmdlIExvb2tzIEdvb2Qg
dG8gbWUuDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4N
Cg0KPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4NCj4gQ2M6
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IENjOiBT
aGFua2FyIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPiBDYzogU3RhbmlzbGF2IExpc292
c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+DQo+IENjOiBXaWxsaWFtIFRzZW5n
IDx3aWxsaWFtLnRzZW5nQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogTGVlIFNoYXduIEMg
PHNoYXduLmMubGVlQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYyB8IDMgKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwg
MyBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYw0KPiBpbmRleCBjYWEwMzMyNGE3MzMuLjkwOTc3
Y2ZiN2ViYiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xf
dW5pdmVyc2FsX3BsYW5lLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9z
a2xfdW5pdmVyc2FsX3BsYW5lLmMNCj4gQEAgLTYyMCw2ICs2MjAsOCBAQCBza2xfcGxhbmVfZGlz
YWJsZV9hcm0oc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwNCj4gDQo+ICAJaW50ZWxfZGVfd3Jp
dGVfZncoZGV2X3ByaXYsIFBMQU5FX0NUTChwaXBlLCBwbGFuZV9pZCksIDApOw0KPiAgCWludGVs
X2RlX3dyaXRlX2Z3KGRldl9wcml2LCBQTEFORV9TVVJGKHBpcGUsIHBsYW5lX2lkKSwgMCk7DQo+
ICsJaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMCkNCj4gKwkJaW50ZWxfZGVfd3JpdGVf
ZncoZGV2X3ByaXYsIFBMQU5FX0NPTE9SX0NUTChwaXBlLCBwbGFuZV9pZCksIDApOw0KPiAgfQ0K
PiANCj4gIHN0YXRpYyB2b2lkDQo+IEBAIC02MzgsNiArNjQwLDcgQEAgaWNsX3BsYW5lX2Rpc2Fi
bGVfYXJtKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsDQo+ICAJaW50ZWxfcHNyMl9kaXNhYmxl
X3BsYW5lX3NlbF9mZXRjaChwbGFuZSwgY3J0Y19zdGF0ZSk7DQo+ICAJaW50ZWxfZGVfd3JpdGVf
ZncoZGV2X3ByaXYsIFBMQU5FX0NUTChwaXBlLCBwbGFuZV9pZCksIDApOw0KPiAgCWludGVsX2Rl
X3dyaXRlX2Z3KGRldl9wcml2LCBQTEFORV9TVVJGKHBpcGUsIHBsYW5lX2lkKSwgMCk7DQo+ICsJ
aW50ZWxfZGVfd3JpdGVfZncoZGV2X3ByaXYsIFBMQU5FX0NPTE9SX0NUTChwaXBlLCBwbGFuZV9p
ZCksIDApOw0KPiAgfQ0KPiANCj4gIHN0YXRpYyBib29sDQo+IC0tDQo+IDIuMTcuMQ0KDQo=
