Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id knESHt938mmsrgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 23:27:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF48B49A95A
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 23:27:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E78F510F18E;
	Wed, 29 Apr 2026 21:27:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=igalia.com header.i=@igalia.com header.b="VF0nqJSQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5EC410F18B;
 Wed, 29 Apr 2026 21:27:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
 Message-ID:Content-Type:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=P+YHxiWayYtMcGT4cchSQZurmu0uKrlxRQSW7KYEbZg=; b=VF0nqJSQyE6B53NmJPy9qboyPJ
 dtK0RLMlPt4j8t4eI+D9GUWR7hE+fviE0r13JHSGbEnSgVB2EKfP+E48DtgPgnWK+QwFAH9a6d41R
 UYA+qbPL/XFPJi0ot9uo8FqZ1wY0fMkk0v5bimbdUzmJck3JcGxaRRTbcHXBF4ATNcvhoyb77l3bi
 lHZzQNVQODCesD7pwToRLIqZ2Gy4y5bSp0QPO9WL8rrNoNVPakX23zZrSSSCi4+OrqB7Ux7Vz2le5
 7PAb2GICUAY/hBSk/HqZ7xa4zsK9iFL5+WJbPeXzxVe83ayAVaQcaBq3Ju/MQJ/dvkA1CVFv4sM7/
 mCDthn9A==;
Received: from c-73-157-168-91.hsd1.or.comcast.net ([73.157.168.91]
 helo=[192.168.1.133]) by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1wICRi-0048Hf-9Q; Wed, 29 Apr 2026 23:27:49 +0200
Content-Type: multipart/mixed; boundary="------------QUgaupq3qhg3mywiW5XqRiiT"
Message-ID: <6ceb624d-36ad-43a2-8635-ad2f50cc01f7@Igalia.com>
Date: Wed, 29 Apr 2026 14:27:43 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 00/26] Enable Pipe writeback
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com,
 kernel-dev@igalia.com
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
Content-Language: en-GB
From: John Harrison <John.Harrison@Igalia.com>
In-Reply-To: <20260325110744.1096786-1-suraj.kandpal@intel.com>
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
X-Rspamd-Queue-Id: BF48B49A95A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.59 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain,text/x-patch];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+];
	ARC_NA(0.00)[];
	HAS_ATTACHMENT(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	FROM_NEQ_ENVFROM(0.00)[John.Harrison@Igalia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[igalia.com:-];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]

This is a multi-part message in MIME format.
--------------QUgaupq3qhg3mywiW5XqRiiT
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 3/25/26 04:07, Suraj Kandpal wrote:
> This series aims to enable pipe writeback functionality on
> ADLP where it has been tested. The plan is to slowly accomodate
> all supported hardware after this functionality is tested on them.
> This series currently sits on top of two series still under review
> in drm core. They are squashed as the first two patches of this series.
> This series enables the triggered captured mode where we need to
> trigger a capture.
>
> v2
> - Do required changes to take into account the new drm writeback
>    framework
>
> v3
> - Fix patch series to apply cleanly
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Hello,

I tried this out (on a LNL because I don't have an ADL at the moment) 
and hit a bunch of issues with null pointer dereferences.

It looks like the intel_writeback_connector::job field is never filled 
in but it is being used. Further, it looks like that field exists 
because conn_state->writeback_job is gone by the time the capture 
function is called. However, the capture function is still using that 
null job pointer instead of caching the required info in the intel 
specific structure.

Specifically, in intel_writeback_atomic_commit() it says:
     drm_writeback_queue_job(connector, conn_state);
     intel_writeback_capture(state, intel_connector);

And the doc for the drm call explicitly says it clears the writeback_job 
field that the capture function tries to use.

I made the attached changes to my local tree and I no longer get any 
kernel panics. I do get a "flip_done timed out" followed by a bunch of 
warns along the lines of "attached crtc is active, but connector isn't". 
I'm guessing this is related to running on unsupported hardware? What 
would be needed to enable this for LNL?



Thanks,
John.

--------------QUgaupq3qhg3mywiW5XqRiiT
Content-Type: text/x-patch; charset=UTF-8;
 name="0001-drm-i915-writeback-Fix-null-pointer-problems.patch"
Content-Disposition: attachment;
 filename="0001-drm-i915-writeback-Fix-null-pointer-problems.patch"
Content-Transfer-Encoding: base64

RnJvbSAzN2ZhN2JhYjYzNDI5MTIwZTZiMTg5MGM5Zjg1OGM4NTI5OWVhMzNlIE1vbiBTZXAg
MTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBKb2huIEhhcnJpc29uIDxKb2huLkhhcnJpc29uQEln
YWxpYS5jb20+CkRhdGU6IFdlZCwgMjkgQXByIDIwMjYgMTE6MzA6MTkgLTA3MDAKU3ViamVj
dDogW1BBVENIXSBkcm0vaTkxNS93cml0ZWJhY2s6IEZpeCBudWxsIHBvaW50ZXIgcHJvYmxl
bXMKClRoZSBpbnRlbF93cml0ZWJhY2tfY29ubmVjdG9yOjpqb2IgZmllbGQgd2FzIGJlaW5n
IHVzZWQgYnV0IG5ldmVyIHNldC4KU28gZml4IHRoYXQuIEFsc28sIHRoZSBjb25uX3N0YXRl
LT53cml0ZWJhY2tfam9iIGZpZWxkICh0aGUgRFJNIGpvYikKd2FzIGNsZWFyZWQgaW1tZWRp
YXRlbHkgYmVmb3JlIHRoZSB0aW1lIHRoZSBjYXB0dXJlIGZ1bmN0aW9uIHdhcwpjYWxsZWQg
KHdoaWNoIHNlZW1zIHRvIGJlIHdoeSB0aGVyZSBpcyBhIGNvcHkgaW4gdGhlIEludGVsIHNw
ZWNpZmljCnN0cnVjdHVyZSkuIFNvIGRvbid0IHRyeSB0byBkZXJlZmVyZW5jZSB0aGF0IG51
bGwgcG9pbnRlciBpbiB0aGUKY2FwdHVyZSBmdW5jdGlvbi4KClNpZ25lZC1vZmYtYnk6IEpv
aG4gSGFycmlzb24gPEpvaG4uSGFycmlzb25ASWdhbGlhLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3dyaXRlYmFjay5jIHwgMTcgKysrKysrKysrKyst
LS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfd3Jp
dGViYWNrLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3dyaXRlYmFj
ay5jCmluZGV4IDUyYzJkOGI5MWFmZi4uZjRiNjE3YTVkMGZiIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3dyaXRlYmFjay5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfd3JpdGViYWNrLmMKQEAgLTI2NSwyMCAr
MjY1LDIyIEBAIHN0YXRpYyB2b2lkIGludGVsX3dyaXRlYmFja19jYXB0dXJlKHN0cnVjdCBp
bnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNw
bGF5ID0gdG9faW50ZWxfZGlzcGxheShjb25uZWN0b3IpOwogCXN0cnVjdCBpbnRlbF93cml0
ZWJhY2tfY29ubmVjdG9yICp3Yl9jb25uID0KIAkJY29ubl90b19pbnRlbF93cml0ZWJhY2tf
Y29ubmVjdG9yKGNvbm5lY3Rvcik7Ci0Jc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNv
bm5fc3RhdGUgPQotCQlkcm1fYXRvbWljX2dldF9uZXdfY29ubmVjdG9yX3N0YXRlKCZzdGF0
ZS0+YmFzZSwgJmNvbm5lY3Rvci0+YmFzZSk7CiAJc3RydWN0IGludGVsX2NydGMgKmNydGMg
PSBpbnRlbF9jcnRjX2Zvcl9waXBlKGRpc3BsYXksIHdiX2Nvbm4tPnBpcGUpOwogCXN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlID0KIAkJaW50ZWxfYXRvbWljX2dldF9u
ZXdfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7CiAJY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5
X21vZGUgKmFkanVzdGVkX21vZGUgPQogCQkmY3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9k
ZTsKLQlzdHJ1Y3QgZHJtX3dyaXRlYmFja19qb2IgKndiX2pvYiA9IGNvbm5fc3RhdGUtPndy
aXRlYmFja19qb2I7Ci0Jc3RydWN0IGludGVsX3dyaXRlYmFja19qb2IgKmpvYiA9IGNvbm5f
c3RhdGUtPndyaXRlYmFja19qb2ItPnByaXY7CisJc3RydWN0IGludGVsX3dyaXRlYmFja19q
b2IgKmpvYiA9IHdiX2Nvbm4tPmpvYjsKIAllbnVtIHRyYW5zY29kZXIgdHJhbnMgPSB3Yl9j
b25uLT50cmFuczsKIAl1MzIgdmFsID0gMDsKIAlpbnQgYnBwOwogCi0JYnBwID0gZ2V0X2Nv
bG9yX21vZGVfYnBwKGRpc3BsYXksIHdiX2pvYi0+ZmItPmZvcm1hdC0+Zm9ybWF0KTsKKwlp
ZiAoIWpvYikgeworCQlkcm1fZXJyKGRpc3BsYXktPmRybSwgIk5vIHdyaXRlYmFjayBqb2Ig
Zm9yIGNhcHR1cmUhXG4iKTsKKwkJcmV0dXJuOworCX0KKworCWJwcCA9IGdldF9jb2xvcl9t
b2RlX2JwcChkaXNwbGF5LCBqb2ItPmZiLT5mb3JtYXQtPmZvcm1hdCk7CiAJdmFsID0gRElW
X1JPVU5EX1VQKChhZGp1c3RlZF9tb2RlLT5oZGlzcGxheSAqIGJwcCksIDY0KTsKIAlpbnRl
bF9kZV93cml0ZShkaXNwbGF5LCBXRF9TVFJJREUodHJhbnMpLCBXRF9TVFJJREVfVkFMKHZh
bCkpOwogCkBAIC0zMjEsOCArMzIzLDEwIEBAIHZvaWQgaW50ZWxfd3JpdGViYWNrX2F0b21p
Y19jb21taXQoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCiAJCQlyZXR1cm47
CiAKIAkJaWYgKGNvbm5fc3RhdGUtPndyaXRlYmFja19qb2IgJiYgY29ubl9zdGF0ZS0+d3Jp
dGViYWNrX2pvYi0+ZmIpIHsKKwkJCXN0cnVjdCBpbnRlbF93cml0ZWJhY2tfY29ubmVjdG9y
ICp3Yl9jb25uID0gY29ubl90b19pbnRlbF93cml0ZWJhY2tfY29ubmVjdG9yKGludGVsX2Nv
bm5lY3Rvcik7CiAJCQlXQVJOX09OKGNvbm5lY3Rvci0+Y29ubmVjdG9yX3R5cGUgIT0gRFJN
X01PREVfQ09OTkVDVE9SX1dSSVRFQkFDSyk7CiAKKwkJCXdiX2Nvbm4tPmpvYiA9IGNvbm5f
c3RhdGUtPndyaXRlYmFja19qb2ItPnByaXY7CiAJCQlkcm1fd3JpdGViYWNrX3F1ZXVlX2pv
Yihjb25uZWN0b3IsIGNvbm5fc3RhdGUpOwogCQkJaW50ZWxfd3JpdGViYWNrX2NhcHR1cmUo
c3RhdGUsIGludGVsX2Nvbm5lY3Rvcik7CiAJCX0KQEAgLTM1Miw3ICszNTYsNyBAQCBzdGF0
aWMgdm9pZCBpbnRlbF93cml0ZWJhY2tfZW5hYmxlX2VuY29kZXIoc3RydWN0IGludGVsX2F0
b21pY19zdGF0ZSAqc3RhdGUsCiAJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRl
bF9jcnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0Yyk7CiAJc3RydWN0IGludGVsX3dyaXRlYmFj
a19jb25uZWN0b3IgKndiX2Nvbm4gPQogCQllbmNfdG9faW50ZWxfd3JpdGViYWNrX2Nvbm5l
Y3RvcihlbmNvZGVyKTsKLQlzdHJ1Y3QgaW50ZWxfd3JpdGViYWNrX2pvYiAqam9iID0gd2Jf
Y29ubi0+am9iOworCXN0cnVjdCBpbnRlbF93cml0ZWJhY2tfam9iICpqb2I7CiAJY29uc3Qg
c3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFkanVzdGVkX21vZGUgPSAmY3J0Y19zdGF0ZS0+
aHcuYWRqdXN0ZWRfbW9kZTsKIAllbnVtIHRyYW5zY29kZXIgdHJhbnMgPSBjcnRjX3N0YXRl
LT5jcHVfdHJhbnNjb2RlcjsKIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqcGlwZV9jcnRjOwpAQCAt
MzYzLDYgKzM2Nyw3IEBAIHN0YXRpYyB2b2lkIGludGVsX3dyaXRlYmFja19lbmFibGVfZW5j
b2RlcihzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIAlpZiAoIWNvbm5fc3Rh
dGUtPndyaXRlYmFja19qb2IpCiAJCXJldHVybjsKIAorCWpvYiA9IGNvbm5fc3RhdGUtPndy
aXRlYmFja19qb2ItPnByaXY7CiAJd2JfY29ubi0+dHJhbnMgPSB0cmFuczsKIAl3Yl9jb25u
LT5waXBlID0gY3J0Yy0+cGlwZTsKIAlmYiA9IGpvYi0+ZmI7Ci0tIAoyLjQzLjAKCg==

--------------QUgaupq3qhg3mywiW5XqRiiT--
