Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCA78B0A09
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Apr 2024 14:51:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5067E113B21;
	Wed, 24 Apr 2024 12:51:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from GBR01-CWX-obe.outbound.protection.outlook.com
 (mail-cwxgbr01on2107.outbound.protection.outlook.com [40.107.121.107])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8DD8113B20
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Apr 2024 12:51:22 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X/AsUH9Jp/GB/z6ijH5GZEh6AGrrNXHvcihOM7WROFZ/T4L7zbrwRLyH2MOTQ2x2lsJnXUHbZkAjED5uiRqzLdGYqbrS8yjFUZlxO0LBLSGDHQ99ptVflPaJMX7q/dUfXV8rnRMgJhH+qRVauINtOzW2SBrvzxV6yvmZX6b3zo+vNq2XdRZfzSk5UaGbx0OeNIsvDn/dCzcwNo96GZBpT/CbA5lg301+i5COEEG6Z6gIPSzMawWlmmAbNAcC2au/av+WQFfHpLx9pbEyqD/5yFcpqqenyeAFkPrFg7bK74IfF8fw1AraJtqtIAqxkRr4deZA1zGTz1nLY9Nq2vq7Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=el3EA6Ch8ja16Yt3CDf2AXtZs6qWheyjQD69xAJTWDY=;
 b=VTBll5J9oyo2kklgttXarJt+3nHSCU06mve0K17EgukzSIqm0s7UZ1CigXSF9/MNcOAE/8MMm2aTzsc1Ek3yXez5caVm791qmXYBTUiw5YJgOapqooWeE91osbPvef9gb5AaUmy5do+08AP7TcwPZv7k+sAR2YPZoBarSSom3jvHBtoL0zBCY9mvJ845nmNf6o7GkZCIcJUkLtBB3XQFGviz08/4hmA1o8j0Nn8ZFq+gg0tOkOtUkHWoVqzFkiBAY9mJzEMyJB1OuKbzg+gnPaJfHWfDEP5tFEp6kvvylnx8yvysvTii+Op5z+cinQex2KsuswN3rNVSKmVJSdcF2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wonksw.tech; dmarc=pass action=none header.from=wonksw.tech;
 dkim=pass header.d=wonksw.tech; arc=none
Received: from CWXP123MB4696.GBRP123.PROD.OUTLOOK.COM (2603:10a6:400:10f::8)
 by LOYP123MB3087.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:e9::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.44; Wed, 24 Apr
 2024 12:51:19 +0000
Received: from CWXP123MB4696.GBRP123.PROD.OUTLOOK.COM
 ([fe80::fe6e:4ae0:652f:6958]) by CWXP123MB4696.GBRP123.PROD.OUTLOOK.COM
 ([fe80::fe6e:4ae0:652f:6958%7]) with mapi id 15.20.7472.044; Wed, 24 Apr 2024
 12:51:19 +0000
From: Andy Pont <andy.pont@wonksw.tech>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Timeout with USB-C video adapter
Thread-Topic: Timeout with USB-C video adapter
Thread-Index: AQHalkYaNrVlBuMoe0qtU2fve5TdiQ==
Date: Wed, 24 Apr 2024 12:51:19 +0000
Message-ID: <em32687794-85ba-4ce2-98ce-16af8fe460d1@04c694f6.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wonksw.tech;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CWXP123MB4696:EE_|LOYP123MB3087:EE_
x-ms-office365-filtering-correlation-id: 0a289a9c-6b14-4ec8-d44a-08dc645d3ca6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: =?utf-8?B?K3YxWDhjVHVPT1c4S1lJWE1lOWdhUm5EbHRSaTdBRit0WEFxbHh5RTZrelJv?=
 =?utf-8?B?RGFGMUQ1RWZGaEt2clIwdmllZE9ENmlmNXF4cnQyL0ZNQkhWQ2hkZGxUbkRp?=
 =?utf-8?B?OVg2cWxJY0JlZVNKNFJqUDNjQzk2RDE0dnlXcGg1K1Q0bE5YcXN0bHU5M1Nw?=
 =?utf-8?B?UFlDQzBLTHQyUEQzcE1oU2tpcHUvL203RHU2eU8yMkVXOFEwNGNPZkxndmlN?=
 =?utf-8?B?NStYRUIyOU5CZ0xqL0hXTE5kTWVzMk5qaEJZQ1ZNV3ZnR0JlNFBMVmlSS3dY?=
 =?utf-8?B?UGIwY3B4VW5VMnpzM2tuTzhkOVBjM0dKYXNMVEVKVEhWOTlBZ2hRcnRQd2tm?=
 =?utf-8?B?b0JZWXRwazdRT2dSeUpPbEJFbHJKb0RLbDJKRngybmZSbGN5NllRajdjdTBi?=
 =?utf-8?B?Rk1sVGZ4MzdjSVVUNFNlbGRzWTlCK2pTV3U1TUVZQ09TTjZqQ2hvSlNkbUFx?=
 =?utf-8?B?VU1lZHg0UnlleW5QYm1NcmE0ZmYrTnNOd25oVGdIYUFVN2IreGxmek1pUGd1?=
 =?utf-8?B?eU52ZG9kNWN5VEVvZXRyWDVsekF1S3VUSjNYc3JENmFwOTZKc2E0cFhXUE52?=
 =?utf-8?B?YnNkb205Qi9UTzIrdlVyRmlMaSt5dlhUb3lOc0EwaEVrMjhXMmhPbk1Rd1h4?=
 =?utf-8?B?V05QcnY3T3RpKzVMRDBrSHdTU0FaNXJXdXBCUlpLaDFJUFJwYW03UmlnV3hX?=
 =?utf-8?B?d1VpS3dDbTQ3YU1DbHF5MHhKdEhtWktjMUFWRm1JNGF4L05qaVR6QSs0NkF0?=
 =?utf-8?B?YmlDTU9QbEl4ekdmQzBiSUpTWHhnS3pXaTJjemFMOEVya3JvM1VFZWVad2gz?=
 =?utf-8?B?M0VRcUcrbkJvOEZQWlo4SnEwOXY0Q2tDejUwTnpneUgxbTRhMU5zdDI1MXQ4?=
 =?utf-8?B?RFJJeDlkM3U1SlpXcmE1ZERKSitaaHprWko1Sm9DaHB5SFo2WU5GVjV5dTBV?=
 =?utf-8?B?L0JJcDEybEcxY3ZiVUJUMTQyeitIaGV6cG5ZODk5YjZTdnpWOFplMHowbmFY?=
 =?utf-8?B?Y3NKOVB3c01jUDdWZ1BIaXhFREt4a2RPamdCS2gvd2xyK0hWNnF5VC9xTmtP?=
 =?utf-8?B?KzFaTE5Yb0lWdy9kMjY3anJOT1dmVVJnazZhelJmVlp0YmhIdmdnNTVackR6?=
 =?utf-8?B?TnlmSndiVWNkNm5xRGlGVDJUaCs1cXBTcXoxUFBBR0lpSTNsWXVJL0RQZDg5?=
 =?utf-8?B?VmxEcXJsa280b2ZSUjZDZU5zelJIa0hoRklUaVZaTDloV2dMOGc2ZG11SmNO?=
 =?utf-8?B?ZVFOTjI3M3pzVjdTVWN4N3ViY05ITnpnR1FDQ25wMDB6K0psYXpoZ3U2SVhQ?=
 =?utf-8?B?VTczdEIyUnE0a3phWjF6MTUyMkphTGVrRGd5elkybTVrK3BUMmMxcStaUzBE?=
 =?utf-8?B?b3lOdWdqOGJCL2tyVVNCODNmNE10TitGV2ZUY0k3Q1ZzdTNBT3ZsWU93WHkx?=
 =?utf-8?B?SUFRZW1pckhTTkpnRVptcGg4WDlSWDFUU2NYdnpGZnlQUzRWdEpxUEN1VWRs?=
 =?utf-8?B?VWp6bEdLK0VudldhWk9sMVB0cFpUQzJ0T2xob3Y5b0RDbkVRdEVhcjZKaFgz?=
 =?utf-8?B?TUZ0Q2Q3SWtJU1BLS1lndlRFNTVFbnRnbWsrQ1JYWEl6aDRtaXN3VXNnVXlW?=
 =?utf-8?B?aE5sV0VrdklLazBjNjNWalRsN2NvSkIwN3NyQ3pjeTdQbEVlakptZTM0TXJi?=
 =?utf-8?B?SVNQMkpnb2cwWFRJZkUyWWIvcFRCTCtlNWE3aUFWemxNTmJyQXdMc2JkZGxu?=
 =?utf-8?B?TDF4ZnE2Tnk5YVR5MXNJSjNyOTNEc1lKbWZPRTV1aTJLMEprcFV1bjB0TGpZ?=
 =?utf-8?B?Qm9UY2x5QVVBZUhMOHk1UT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CWXP123MB4696.GBRP123.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VVZjSE01YTBWc3U5TlZDK01ZZDk0aktObGd1L1A4TUFHMHVsRVhBeklWcllZ?=
 =?utf-8?B?NFNJMU1hUGJoVytZbmlka0tpc1RsblNtYWhmTnBtOU5ST3EvSmZZd095b1JF?=
 =?utf-8?B?bVFONXliQXpnU3pwMUptekExQWx2a09DM0xFeTZoaGJOM2VCb21LdFI3bzE4?=
 =?utf-8?B?bjJyVEF0emRnL2JIdEp6Zm5TTjFDTy9pVGhtTTRtQkdsUnVNbFpNVkwvWFdI?=
 =?utf-8?B?eWd2QVNsRTJmdVFTaTdKWmdoanV2ZnJGWUJCU05TTWpDbHVjR3U2VElVenVN?=
 =?utf-8?B?bXJHcWhFY29lUUl6MVFxYk82NXY5dm94aWU1WlJFK2o1LzhLK3VtN1QzVGVm?=
 =?utf-8?B?RGN1OE9hZGhFMG5VV2xDV0tERHI2Z0dGQllmWGUwTFp6SnhEWEthaDBTUVBF?=
 =?utf-8?B?UTNyQWxCaVd6ZlBZTG8vTGZOWktrR3didUQ0NEd1eU9pZU84MFNDb3Y0bTRY?=
 =?utf-8?B?WjhWSjUyWjhkUmpCZW5JYTNsSzEvN0c3SEJnYTBQcGxKTmFwTGVvSnI1T0d0?=
 =?utf-8?B?R1k3M05QNmU4Tms3MDBUc2ZIQVowL1NTa1p4VGwxNmVaUlZVQ0xkV0VXcmlB?=
 =?utf-8?B?dzFFaVBSNW9CUFVVR21JWUlZcFh0b2dTVHpnQlpkUlRRRmxtQ0dQaDMyaU5X?=
 =?utf-8?B?KzFmcWVZOEJjSEJsdjVqVXFvdm5PaU1Ib2Y2NUc4T0pBTDdsd0Mrekg5TlRP?=
 =?utf-8?B?TURpQU1nYXpRdVBjS04zQzFiZXdqaEMxVk85ekFLT0J0M241RVJiZjhCVzNX?=
 =?utf-8?B?RzN5Y0wrWEhST2xLb1E5bHpQT29DN3ZtQ015cDFDRDY1R2VuTlVwZGI1MTJE?=
 =?utf-8?B?ZTIyNEJCN3B6SWEyblVWQzIrajZrMUhBYWx0cnJzNE5uYS9aUWRIZnJLQmlh?=
 =?utf-8?B?emhPdUlPUUxmQlhGanBTaUtTeEZsQThxOVNKN0VlY25OSS8zQVBxUnN2bW5J?=
 =?utf-8?B?dkVma0lVVUY0dUZKRTVVRVBmbUtxbFZuZTZsbFIxSTNrRFVVemdKR0xyRVpF?=
 =?utf-8?B?cXhsSkNtTk5HVkVKNnpVTy9rZUNxa3pJbjBwdHc2R1psanNZU0tEYytsN25w?=
 =?utf-8?B?dVJ0cU1TOERtV2ZsOFFwZEFPSnVZMDRaYTVuemlzM3dBNmhVeHNNUm5McTFp?=
 =?utf-8?B?Rm5nTjR1TzA2VzFFV2phRTFUR0R2c09IWmNsQTVwcnNZS2R0dWlxRG84M2ow?=
 =?utf-8?B?bXZRUlUrclFEV1Fnb0lOQ1hHeVJjVHgrb0YxdHRjTXVCdXJRd3hhRTUwVHhZ?=
 =?utf-8?B?aXhkdE5Jc3pKaXV6RmFvOFRNZHMwMExib21GU3J1alZFSUZNdFI1ZE8zeWNT?=
 =?utf-8?B?ZkRPTVltWTlMOWNBTnZteFRYeVN5SlVzME0vd0kza3hBUTdMZzFMSWdZTDlK?=
 =?utf-8?B?VGFPWGlXblI4azhaRENtc3pKbWcvRlRhL3g5UnBRR0lUVmR1UFNpR1l5N0tK?=
 =?utf-8?B?V3EvRlVRcU9UWG4wU0VtVEZvdXRYdlBxUkZaYUFaOUVZYURnRktvN1BQQ2ZV?=
 =?utf-8?B?M25IazNtZ2FobG52Vm12NVFhalRabmU1YjdmSitWS3VhbFMvUStsYUlMUmhM?=
 =?utf-8?B?cXdNNXVac1o3OGlQVndnYktWUnZDZG9rTXpmZzk3VnVURnlUcHpGSmhUS0dr?=
 =?utf-8?B?aThOM1RnRWdObkFHcVoxd05pWWFYYWdrY1lZM2lHZFFiN3pHWFF3dm96S084?=
 =?utf-8?B?RU1oSWlLVlZKZEhMeHcrQTQ2eW9FNGFBbEl0UTJWdHlpeUZEbmlaRS9IL0w2?=
 =?utf-8?B?bm5rVmd1ekd2UHZjWTgrWmZ2eXVqa3RzM2cvUHVmaDlxSE91cURlQkVsa1R4?=
 =?utf-8?B?RjZoMGZnWC9KdCtJUVlQTFAxdmVPMkNZcitnVGJnUzJxUkNISG5mN1RMVlFH?=
 =?utf-8?B?eVZHa0VNR2p4cThYTGM0RHFtTG9yelM2WHdxL0JPWjdCU1ExcWxLV0RQM3Rk?=
 =?utf-8?B?c1pwMEtzY1hkSG9zS0hkdXRneS94SW1ERGRJWTM5RFFCUXVNWXl4dFUwVFRI?=
 =?utf-8?B?dW13ZFB4bEU3OFBCeCtiTkFkMDhyRkNrbUdheXh3dE4rMmEvVmFUMlFIaVhK?=
 =?utf-8?B?VDJtUjFlL2JxTW5sQUwrOVRuMDhWMDdZeVJpQU1PYjNkWDVFR2g4dWZML0Z0?=
 =?utf-8?B?a0tHdVVDbWZyaWtMTnlzSmR5STI3K21xdDcweDVQNU5FQ3loRHNlQjNRa3Zk?=
 =?utf-8?B?NkE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7E5000FDB5A0084E8536833EBF790265@GBRP123.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: wonksw.tech
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CWXP123MB4696.GBRP123.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a289a9c-6b14-4ec8-d44a-08dc645d3ca6
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2024 12:51:19.1928 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6fbe171c-fc2f-48c7-b6cc-ccb76203ff8e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KQSJ9o2lB0TfKuJ2ztkrC67eqajg2u41PaHYTdlAUmQshD6tlO3sjSIsZs8xhpCb/yIKRTKHzwGalb7FhC7viQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LOYP123MB3087
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
Reply-To: Andy Pont <andy.pont@wonksw.tech>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGVsbG8sDQoNCknigJltIHdvcmtpbmcgb24gdGhlIGNvcmVib290IHBvcnQgZm9yIGEgbGFwdG9w
IHdoaWNoIHVzZXMgdGhlIE4yMDAgDQooQWxkZXJMYWtlLU4pLiAgVGhlIGJ1aWx0IGluIExDRCBh
bmQgSERNSSBwb3J0IGFyZSB3b3JraW5nIGNvcnJlY3RseSBidXQgDQpJIGFtIGhhdmluZyBwcm9i
bGVtcyB3aXRoIGRyaXZpbmcgYW4gZXh0ZXJuYWwgZGlzcGxheSBvdmVyIFVTQi4NCg0KVGhlIExp
bnV4IGtlcm5lbCAoNi41LjAtMjctZ2VuZXJpYyBpbiBVYnVudHUgMjMuMTApIGdpdmVzIGEgbWVz
c2FnZSB0aGF0IA0Kc2F5czoNCg0KaTkxNSAwMDAwOjAwOjAyLjA6IFtkcm1dICpFUlJPUiogVGlt
ZW91dCB3YWl0aW5nIGZvciBEREkgQlVGIEQgdG8gZ2V0IA0KYWN0aXZlDQoNClRoZSB0aW1lb3V0
IG9jY3VycyBpbiBoc3dfd2FpdF9mb3JfcG93ZXJfd2VsbF9lbmFibGUoKS4gIEkgaGF2ZSBwdXQg
dGhlIA0KZnVsbCBkbWVzZyBvdXRwdXQgb2YgdGhlIGRybV9XQVJOX09OKCkgbWVzc2FnZXMgb24g
UGFzdGViaW5bMV0uDQoNCknigJltIGd1ZXNzaW5nIHNvbWV0aGluZyBpbiB0aGUgRlNQIGlzbuKA
mXQgYmVpbmcgY29ycmVjdGx5IGNvbmZpZ3VyZWQgYnV0IEkgDQpkb27igJl0IGtub3cgd2hldGhl
ciBpdCBpcyBncmFwaGljcywgVVNCLCBvciBwb3dlciByZWxhdGVkLg0KDQpUaGFua3MgaW4gYWR2
YW5jZSBmb3IgYW55IGFkdmljZSBvbiB3aGVyZSB0byBsb29rLg0KDQotQW5keS4NCg0KMS4gaHR0
cHM6Ly9wYXN0ZWJpbi5jb20vcDNKVFlwVEMNCg0K
