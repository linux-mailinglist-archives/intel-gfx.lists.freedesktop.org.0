Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E334C0B1D
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 05:32:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E87F910E795;
	Wed, 23 Feb 2022 04:32:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B758F10E795
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 04:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645590752; x=1677126752;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hX8N6Z+k7ywVbAUEaabt5zwXWuByC2/mhuHSlf5h2GE=;
 b=O4QrEDsCV14peiqceX1hPpMiIs5pIPS1dwbHMPmhSxoZrR1fiSGLczHR
 1fhUFCc0MD3xLGySDQlXbHH4ffMa4MoZJHRvBdABNMfpBVL/ath4KxcaG
 HJDi+yTFkWBDURWsfleXoFmJUIK8ikjrUhL3HptqASv7u7DNnX+R9XSPY
 reu1VSQP9CjeuWK/s2VBYms7BmQ94oif8sJmZ3u2TcbaZM2WnsaCO295H
 c7Doh9KpohhhLCWTLvDON+7jrYrYWdbLXRbTZREpo6gdH/8ktoNMysVDl
 QBh7+4/ABhuTzambZ8mgPiQXspFH0v/z+xPntjRLKqxutsN6d31CuA2hp g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="252071615"
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="252071615"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 20:32:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="780597362"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga005.fm.intel.com with ESMTP; 22 Feb 2022 20:32:32 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 22 Feb 2022 20:32:31 -0800
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 22 Feb 2022 20:32:31 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 22 Feb 2022 20:32:31 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 22 Feb 2022 20:32:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I9WJis7AxQXno61ON3ZyK6IEhOp86ThN23aj7wqMWq1LqnTrfVRaXjKH4T8evf9akmKoSbQuQOJLSjI21KPBmluh2o9tUS0tb/jyWTFFBp4NCBtSQXVwifdnkzi5mN+9Hhfy7bj7WIZAhO30nTID44rrM5A4wWLf5GmX/UHlQPhY4GaOYgcdebIhSU7g34Yd6YLOiKCve4ZEsNm89KVYHDiUIVd6ynGva2HT4tJrrCK3Sfxw0IUXULYxxcXchP7IfLrh93sCxmIiNaA6nAQ1I45bxrMUd5lGiUNe+abWRvzikr4iYeinKGTtOmWub4iqLki5YsMaLd9aeuY4c0ag3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AiZrCilFVMADJZzP0bWB3S90p3tFwNmvkp45RwnzHmo=;
 b=Vkv0du+MVsV/ufWDKLPWBu1uPzLlRBrnHLZWzIiQx/obx1Tw8sA5zIciZL3D015ISYOg8TWznqEbZdVLzv01wTXC6w5eEjInO30XLDthj4BD9Ql2JkqIGikL64XNyJHKrtfzSNGV0q3aNalWH3eNIzwr7e7QmdHt8D5OvQwA8z5zQL5b+ShrQDIud4KfXlKdjyguGPHuIFgocMy1kPwqpgUsqoyGfsNqBUvW22JZluuJvR/qMyFSzRY0ZVJOQf+GqPxOpJ+6i6xIwPjPa2tVAg6RvAzj3039AcWzmV84UDLnRLHaoa02/V06iY914pCbGdNiju8b5+Rz47YkvDQvDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB2684.namprd11.prod.outlook.com (2603:10b6:5:c7::18) by
 BL3PR11MB5700.namprd11.prod.outlook.com (2603:10b6:208:33f::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.22; Wed, 23 Feb
 2022 04:32:28 +0000
Received: from DM6PR11MB2684.namprd11.prod.outlook.com
 ([fe80::f569:18eb:b90c:63ef]) by DM6PR11MB2684.namprd11.prod.outlook.com
 ([fe80::f569:18eb:b90c:63ef%5]) with mapi id 15.20.4995.027; Wed, 23 Feb 2022
 04:32:28 +0000
From: "He, Yu" <yu.he@intel.com>
To: Zhenyu Wang <zhenyuw@linux.intel.com>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915/tgl: Simply subplatform detection
Thread-Index: AQHYKGg61tQGfvF/Qkagy2w4rayIXaygimhA
Date: Wed, 23 Feb 2022 04:32:28 +0000
Message-ID: <DM6PR11MB2684A98B8E4F8C1040800B30E03C9@DM6PR11MB2684.namprd11.prod.outlook.com>
References: <20220222141424.35165-1-jose.souza@intel.com>
 <6c43bb44-e38b-572e-0f8b-2559a7f0514f@linux.intel.com>
 <20220223032846.GE1100@zhen-hp.sh.intel.com>
In-Reply-To: <20220223032846.GE1100@zhen-hp.sh.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: da0f7f98-af7f-4290-e29a-08d9f6857ff8
x-ms-traffictypediagnostic: BL3PR11MB5700:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BL3PR11MB5700C15E26C700F91E688940E03C9@BL3PR11MB5700.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: N8Q5sPNBIbqgx+Rh1xjE32/FhkFKTdu9WgVpzWzwXFjR9CgLP34ZwwE7KeF8QMaxXZBPDkzFFS40MrE4DicTYHkqd8IbXlWEY2J4QRbVwZs+p1vrPx6/eHRdWvK0qrlnpmW498cnxb91Nr8x3Qtq1I80+zMbpOFczLSm1MsZllallCtkiGVD8frFwvCPnDL51RWxs2TMld+UDuJ4y8TJWfkuict8ecVkclUdSdrsBatZhMQ5XwWS22dDQI7WEaJpUxbbsOiONs1Piwqaufw7xBV2d5W/fq6GVcMQSx59Lq/69np4JE+hN2wzyCQotO97j+f+BGRKO39lSqYq4TLSoX7R34BJQwlwAKi2+TTBAdXheGr8abVIpL+ABDliFIDNlLYAcGrcdMtCjCBwKKM2CeGS6jvTMf8LN6Kg+1M74CcFwYocfVxhXnDw3ToaBrTrH+nNTtVInEK7Zq73dDsFd6RUTeET1L8dJMtqpOYHD8Sws88WW+IgSO/5MZAVaAmQLXlg3d+4F3N8RaJLzIKkr0WKySJEnk8ylFJ3OSH7YYxkwGowQa8wqISjy7Bvha6xB2eF8Gw2+M8JqVeKgGeLtQRG19/0oDGEzmly6rpjOqLJanqwb+o09Gbmbpw82yVjvKNN9I5PNyi/O4sw6WyiUSCShndPKjnxfIsZkxRpl0RpTySdgeGC+aoiU7wkjZK1e7kxmTeYc1Y9nQDzrpn/nA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2684.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(186003)(2906002)(33656002)(83380400001)(508600001)(26005)(54906003)(4326008)(8676002)(316002)(38070700005)(9686003)(8936002)(52536014)(55016003)(5660300002)(82960400001)(7696005)(53546011)(71200400001)(122000001)(6506007)(76116006)(66556008)(66446008)(64756008)(86362001)(66476007)(66946007)(38100700002)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-2022-jp?B?OGVxQXd5RExGMVdKcDBpT2xsQlhlM2tWZnNtZFJ4RHpEUnFodnlnNm9q?=
 =?iso-2022-jp?B?a1BCRTJON3cvaENVSDVMMzVDQmU2d3VmRXV2SGkrbU9UM0R6c1R3VDdM?=
 =?iso-2022-jp?B?Tyt6c1YrU0xab0RyNk40azZ3VFMzUlNYM2M3aVZFcnQxdVIyOE52VGl6?=
 =?iso-2022-jp?B?Y1B1RFRqcUprT2t5QWhhWWtaMTEvUzlMQUMxeGQzaHF3cFd4S0VGbTNq?=
 =?iso-2022-jp?B?U1c1T3kwOTdISTBVN3NsVndNMlB1R3ovZ1Y0czlHN2FzaHZ4VzFPZzR4?=
 =?iso-2022-jp?B?ODVkdjJBTTNyQW5aVHQzVWQ0N0NCTnRSaXFGSUw0Q0pKWGo1ZEZRa1Za?=
 =?iso-2022-jp?B?aFF3cE9Tc1oxK2R2NHlrNDdaanNqMklIa1RjWXJQanp4cUdLQVBtNFoy?=
 =?iso-2022-jp?B?OGtnb3hPWm0yNVlTdW5LeDdyclVRdGlBZ0p5OEJWMStYZFBNT2lCVUlN?=
 =?iso-2022-jp?B?bk9EY2R6bkVrTStqV2NDV0J0d293d3l0RExSWjRzaTVhQ2xlTm1Udkoy?=
 =?iso-2022-jp?B?VDVaak1LRXJBUGlRTW9TT1dZQUpFZVVIMFlTVkkwVktielZmQWZ6TUQy?=
 =?iso-2022-jp?B?UkZqOWpycTN1UjI1WkJlYUZQVEV5MmVJdGpmeVI4WHdtMVY2RGt4SUsx?=
 =?iso-2022-jp?B?MmlkcCt0OUQydVJTMGFnbitKSFV4ajNtM0dMUlM3MGZRKzUrbE5lUVRT?=
 =?iso-2022-jp?B?SVBFWGNDYm05QmNKbmpWL055M3pVVG81bGV3SCtxSFQ0MmE5cHdqdGll?=
 =?iso-2022-jp?B?RStLb01sQS9IbXlSeWp0TVBmenh5N0huUkNVNkd4dFdvbHNzbTdiMnNK?=
 =?iso-2022-jp?B?SnlMMSt0Y3VIczlHU0Z5Qi91a3dtakxwSXZiaUdoMWlBNkRxUU1jMDJW?=
 =?iso-2022-jp?B?T0p2Y2pWYkt3dUxYOTFxYU1uekMxLzVzSXl2NGt1WFliTkIyRUV4N3lj?=
 =?iso-2022-jp?B?aThXWGwvdEtCQUlMaFoyT29GN0J5OGZhRnlnQjFRbmZPM1BiK29Qc1o4?=
 =?iso-2022-jp?B?a01kM3kzZmkzM1NJZnBFSTNjWlhIVUZOdlQxZG1zWVdXZEFBR0NyS3cz?=
 =?iso-2022-jp?B?U2VPUzFZaHhLSHZoZGVINWx5WFJyR09aVmdyUjZEdXgxZWVza1ZsSG9K?=
 =?iso-2022-jp?B?V2g5VW5VM3pEeVZ4WWxVdTVZU0lDaGVES0MySnJLWDJsTE5KUDRFZ1dp?=
 =?iso-2022-jp?B?T0swU0RUd2tOZ3ZBakNRMDl5VzdkeDZZWmhmRHlyMjRmc0ZpQWZ6MVJJ?=
 =?iso-2022-jp?B?OVFsbWJvRVZraWFHUFM3dVVhZklyeHlXOGNjSHYyVFZscWw4VWVJbFA0?=
 =?iso-2022-jp?B?Z2hLR0lpRjhzSDVHekRTZW1yTThyQmtHK2RYZjdZSGE4aWlwRWJMZXRq?=
 =?iso-2022-jp?B?QjV2NXJ4L3dyMEJOVThQVWRmdEdPNFNYL3QxQVQ5T0dNMlBaT0hvdXpO?=
 =?iso-2022-jp?B?V2w3Qi9SYVpkdk03R3g3NEg2eU9pQ1NUeW1qODFvWFNoSzBJenZBNk9q?=
 =?iso-2022-jp?B?Q2V6ZjFXdHZyYkhkZTdKd2VPNFdVVFdWMFBabWZSNS83RVZzUUQ3cUdM?=
 =?iso-2022-jp?B?OXpaN3Uxd3lqL3BENHplclA5NmlLdmVRWUVlRGo5SjhCSzVNK3U3QjIr?=
 =?iso-2022-jp?B?bldCRUd0T0Z6L3lCQXpTbWpjWExuYkNFai9xejNiekU5OFVLNDNwcEN5?=
 =?iso-2022-jp?B?ei9heHRtVndaWXJ2aDlwblRQV3h4a1dXT2NhVzB3KzlIaUQ5NUVKbk1t?=
 =?iso-2022-jp?B?OFRRRkxKTVJDRkRrK1hkaTYxVDhCQUVaYXR0OHFhY3F5cGc3NkpBb28x?=
 =?iso-2022-jp?B?YSsxZGgzYXlabjZQdWVUN3VJb2pwUkltMHEzcGM0cDU1TzkyLysxazJu?=
 =?iso-2022-jp?B?bi8zblRJU0FzQ3J3RlZLZDBkMm1vanVKVWI2andMK3I5TGN6MGVKbW8v?=
 =?iso-2022-jp?B?ZTJHM0dwa3UxdlNmQ0Q1cnpDWWxMUlFOUTFmY3BlbjNXcHM3bFJBTkpI?=
 =?iso-2022-jp?B?UnpJRGtoY3Q2WURWSHlHVWQ0Z2VJZURWZVdvRnZEbFgyRmFwYVNVbHcr?=
 =?iso-2022-jp?B?d0FNbkhQQXkrdVNWdlozeDFtcVZPNkxkdUlwTmlKendndll4UDIrVkNN?=
 =?iso-2022-jp?B?VTljdGQyNlJlVUVpOEVjR3FuTGduV3lrZEYwRkNETmhRVUpUbG9JRE9Q?=
 =?iso-2022-jp?B?WVVmNjJkalIvUGRhTTU5TmFSSVVzUDFOZDY2SVR5d1dvSWN4NWU2SzZt?=
 =?iso-2022-jp?B?NVdPWk5UNTlqU0g3UnMxQUNYbmlab0N0TT0=?=
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2684.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da0f7f98-af7f-4290-e29a-08d9f6857ff8
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2022 04:32:28.6955 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vttxiPJHtYwkS3o4YZFN2O/61Ti9ZFr7C268nxTUGJtMp4Eu371YA46J9/+jd8FH
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB5700
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/tgl: Simply subplatform
 detection
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
Cc: "Gao, Fred" <fred.gao@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>





Best regards,
He,Yu

-----Original Message-----
From: Zhenyu Wang <zhenyuw@linux.intel.com>=20
Sent: 2022=1B$BG/=1B(B2=1B$B7n=1B(B23=1B$BF|=1B(B 11:29
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Souza, Jose <jose.souza@intel.com>; intel-gfx@lists.freedesktop.org; Ga=
o, Fred <fred.gao@intel.com>; He, Yu <yu.he@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/tgl: Simply subplatform detect=
ion

On 2022.02.22 14:21:33 +0000, Tvrtko Ursulin wrote:
>=20
> On 22/02/2022 14:14, Jos?? Roberto de Souza wrote:
> > In the past we had a need to differentiate TGL U and TGL Y, there=20
> > was a different voltage swing table for each subplatform and some=20
> > PCI ids of this subplatforms are shared but it turned out that it=20
> > was a specification mistake and the voltage swing table was indeed=20
> > the same but we went ahead with that patch because we needed to=20
> > differentiate TGL U and Y from TGL H and by that time TGL H was=20
> > embargoed so that was the perfect way to land it upstream.
> >=20
> > Now the embargo for TGL H is long past and now we even have=20
> > INTEL_TGL_12_GT1_IDS with all TGL H ids, so we can drop this PCI=20
> > root check and only rely in the PCI ids to differentiate TGL U and Y=20
> > from TGL H that actually has code differences.
> >=20
> > Besides the simplification this will fix issues in virtualization=20
> > environments where the PCI root is virtualized and don't have the=20
> > same id as actual hardware.
> >=20
> > v2:
> > - add and set INTEL_SUBPLATFORM_UY
>=20
> LGTM, thanks for the tweak!
>=20
> Looks mechanical enough so:
>=20
> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>=20

Add Yu, who has been testing this under GPU passthrough case as well, which=
 now release our effort for root pci device info passthrough issue.

Thanks!

>=20
> > Cc: Fred Gao <fred.gao@intel.com>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> > Signed-off-by: Jos?? Roberto de Souza <jose.souza@intel.com>
> > ---
> >   .../drm/i915/display/intel_ddi_buf_trans.c    |  2 +-
> >   drivers/gpu/drm/i915/i915_drv.h               | 11 +++-----
> >   drivers/gpu/drm/i915/i915_reg.h               |  6 -----
> >   drivers/gpu/drm/i915/intel_device_info.c      | 26 +++++-------------=
-
> >   drivers/gpu/drm/i915/intel_device_info.h      |  3 +++
> >   drivers/gpu/drm/i915/intel_step.c             |  2 +-
> >   6 files changed, 16 insertions(+), 34 deletions(-)
> >=20
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c=20
> > b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> > index 0c32210bf5031..934a9f9e7dabb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> > @@ -1321,7 +1321,7 @@ tgl_get_combo_buf_trans_dp(struct intel_encoder *=
encoder,
> >   	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> >   	if (crtc_state->port_clock > 270000) {
> > -		if (IS_TGL_U(dev_priv) || IS_TGL_Y(dev_priv)) {
> > +		if (IS_TGL_UY(dev_priv)) {
> >   			return intel_get_buf_trans(&tgl_uy_combo_phy_trans_dp_hbr2,
> >   						   n_entries);
> >   		} else {
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h=20
> > b/drivers/gpu/drm/i915/i915_drv.h index 1c2f4ae4ebf98..51417e9b740f4=20
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -1147,11 +1147,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i9=
15,
> >   #define IS_ICL_WITH_PORT_F(dev_priv) \
> >   	IS_SUBPLATFORM(dev_priv, INTEL_ICELAKE, INTEL_SUBPLATFORM_PORTF)=20
> > -#define IS_TGL_U(dev_priv) \
> > -	IS_SUBPLATFORM(dev_priv, INTEL_TIGERLAKE, INTEL_SUBPLATFORM_ULT)
> > -
> > -#define IS_TGL_Y(dev_priv) \
> > -	IS_SUBPLATFORM(dev_priv, INTEL_TIGERLAKE, INTEL_SUBPLATFORM_ULX)
> > +#define IS_TGL_UY(dev_priv) \
> > +	IS_SUBPLATFORM(dev_priv, INTEL_TIGERLAKE, INTEL_SUBPLATFORM_UY)
> >   #define IS_SKL_GRAPHICS_STEP(p, since, until) (IS_SKYLAKE(p) &&=20
> > IS_GRAPHICS_STEP(p, since, until)) @@ -1170,11 +1167,11 @@ IS_SUBPLATFO=
RM(const struct drm_i915_private *i915,
> >   	 IS_DISPLAY_STEP(__i915, since, until))
> >   #define IS_TGL_UY_GRAPHICS_STEP(__i915, since, until) \
> > -	((IS_TGL_U(__i915) || IS_TGL_Y(__i915)) && \
> > +	(IS_TGL_UY(__i915) && \
> >   	 IS_GRAPHICS_STEP(__i915, since, until))
> >   #define IS_TGL_GRAPHICS_STEP(__i915, since, until) \
> > -	(IS_TIGERLAKE(__i915) && !(IS_TGL_U(__i915) || IS_TGL_Y(__i915)) && \
> > +	(IS_TIGERLAKE(__i915) && !IS_TGL_UY(__i915)) && \
> >   	 IS_GRAPHICS_STEP(__i915, since, until))
> >   #define IS_RKL_DISPLAY_STEP(p, since, until) \ diff --git=20
> > a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h=20
> > index 2b8a3086ed35a..30aa1d99f2244 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -8823,12 +8823,6 @@ enum skl_power_gate {
> >   #define   DSB_ENABLE			(1 << 31)
> >   #define   DSB_STATUS			(1 << 0)
> > -#define TGL_ROOT_DEVICE_ID		0x9A00
> > -#define TGL_ROOT_DEVICE_MASK		0xFF00
> > -#define TGL_ROOT_DEVICE_SKU_MASK	0xF
> > -#define TGL_ROOT_DEVICE_SKU_ULX		0x2
> > -#define TGL_ROOT_DEVICE_SKU_ULT		0x4
> > -
> >   #define CLKREQ_POLICY			_MMIO(0x101038)
> >   #define  CLKREQ_POLICY_MEM_UP_OVRD	REG_BIT(1)
> > diff --git a/drivers/gpu/drm/i915/intel_device_info.c=20
> > b/drivers/gpu/drm/i915/intel_device_info.c
> > index ae13bc3c7970e..d03de76147912 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.c
> > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> > @@ -170,6 +170,10 @@ static const u16 subplatform_portf_ids[] =3D {
> >   	INTEL_ICL_PORT_F_IDS(0),
> >   };
> > +static const u16 subplatform_uy_ids[] =3D {
> > +	INTEL_TGL_12_GT2_IDS(0),
> > +};
> > +
> >   static const u16 subplatform_n_ids[] =3D {
> >   	INTEL_ADLN_IDS(0),
> >   };
> > @@ -226,6 +230,9 @@ void intel_device_info_subplatform_init(struct drm_=
i915_private *i915)
> >   	} else if (find_devid(devid, subplatform_portf_ids,
> >   			      ARRAY_SIZE(subplatform_portf_ids))) {
> >   		mask =3D BIT(INTEL_SUBPLATFORM_PORTF);
> > +	} else if (find_devid(devid, subplatform_uy_ids,
> > +			      ARRAY_SIZE(subplatform_uy_ids))) {
> > +		mask =3D BIT(INTEL_SUBPLATFORM_UY);
> >   	} else if (find_devid(devid, subplatform_n_ids,
> >   				ARRAY_SIZE(subplatform_n_ids))) {
> >   		mask =3D BIT(INTEL_SUBPLATFORM_N); @@ -243,25 +250,6 @@ void=20
> > intel_device_info_subplatform_init(struct drm_i915_private *i915)
> >   		mask =3D BIT(INTEL_SUBPLATFORM_G12);
> >   	}
> > -	if (IS_TIGERLAKE(i915)) {
> > -		struct pci_dev *root, *pdev =3D to_pci_dev(i915->drm.dev);
> > -
> > -		root =3D list_first_entry(&pdev->bus->devices, typeof(*root), bus_li=
st);
> > -
> > -		drm_WARN_ON(&i915->drm, mask);
> > -		drm_WARN_ON(&i915->drm, (root->device & TGL_ROOT_DEVICE_MASK) !=3D
> > -			    TGL_ROOT_DEVICE_ID);
> > -
> > -		switch (root->device & TGL_ROOT_DEVICE_SKU_MASK) {
> > -		case TGL_ROOT_DEVICE_SKU_ULX:
> > -			mask =3D BIT(INTEL_SUBPLATFORM_ULX);
> > -			break;
> > -		case TGL_ROOT_DEVICE_SKU_ULT:
> > -			mask =3D BIT(INTEL_SUBPLATFORM_ULT);
> > -			break;
> > -		}
> > -	}
> > -
> >   	GEM_BUG_ON(mask & ~INTEL_SUBPLATFORM_MASK);
> >   	RUNTIME_INFO(i915)->platform_mask[pi] |=3D mask; diff --git=20
> > a/drivers/gpu/drm/i915/intel_device_info.h=20
> > b/drivers/gpu/drm/i915/intel_device_info.h
> > index 2508a47fb3f5e..291215d9da282 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.h
> > +++ b/drivers/gpu/drm/i915/intel_device_info.h
> > @@ -106,6 +106,9 @@ enum intel_platform {
> >   /* ICL */
> >   #define INTEL_SUBPLATFORM_PORTF	(0)
> > +/* TGL */
> > +#define INTEL_SUBPLATFORM_UY	(0)
> > +
> >   /* DG2 */
> >   #define INTEL_SUBPLATFORM_G10	0
> >   #define INTEL_SUBPLATFORM_G11	1
> > diff --git a/drivers/gpu/drm/i915/intel_step.c=20
> > b/drivers/gpu/drm/i915/intel_step.c
> > index ac1a796b28084..4fd69ecd14811 100644
> > --- a/drivers/gpu/drm/i915/intel_step.c
> > +++ b/drivers/gpu/drm/i915/intel_step.c
> > @@ -165,7 +165,7 @@ void intel_step_init(struct drm_i915_private *i915)
> >   	} else if (IS_ROCKETLAKE(i915)) {
> >   		revids =3D rkl_revids;
> >   		size =3D ARRAY_SIZE(rkl_revids);
> > -	} else if (IS_TGL_U(i915) || IS_TGL_Y(i915)) {
> > +	} else if (IS_TGL_UY(i915)) {
> >   		revids =3D tgl_uy_revids;
> >   		size =3D ARRAY_SIZE(tgl_uy_revids);
> >   	} else if (IS_TIGERLAKE(i915)) {

We verified this patch on TGL, and also ran some Linux media/3D cases, no i=
915 error found in guest dmesg.
Tested-by: Yu He <yu.he@intel.com>



