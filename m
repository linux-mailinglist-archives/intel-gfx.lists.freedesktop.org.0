Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55004393DD8
	for <lists+intel-gfx@lfdr.de>; Fri, 28 May 2021 09:27:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F3716F588;
	Fri, 28 May 2021 07:27:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 526176E041;
 Fri, 28 May 2021 07:27:19 +0000 (UTC)
IronPort-SDR: NhjIpVSBzwSmbnhFWIcWN6QqLj3gsuPs/h9roZBxdlC6ibnH0u/9st9wBr4ZRGhcCtbDgLs2d0
 RS2LNoNxFg/w==
X-IronPort-AV: E=McAfee;i="6200,9189,9997"; a="183249760"
X-IronPort-AV: E=Sophos;i="5.83,229,1616482800"; d="scan'208";a="183249760"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2021 00:27:16 -0700
IronPort-SDR: CvSWR6QzoE0DsobX3D6k+VkALwtyn3eW2q5sc6tV9b/U96dUWoBVQS4x+3T32/2Y/Q4jJYh/rM
 WRXvG3UNROJQ==
X-IronPort-AV: E=Sophos;i="5.83,229,1616482800"; d="scan'208";a="615670341"
Received: from srobinso-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.5.219])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2021 00:27:11 -0700
MIME-Version: 1.0
In-Reply-To: <YLCbBR22BsQ/dpJB@jlahtine-mobl.ger.corp.intel.com>
References: <YLCbBR22BsQ/dpJB@jlahtine-mobl.ger.corp.intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, Dave Airlie <airlied@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <162218682866.9100.50543809230103499@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Fri, 28 May 2021 10:27:08 +0300
Subject: Re: [Intel-gfx] [PULL] drm-intel-gt-next
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
Cc: dim-tools@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKb29uYXMgTGFodGluZW4gKDIwMjEtMDUtMjggMTA6MjU6NTcpCj4gSGkgRGF2ZSAm
IERhbmllbCwKPiAKPiBIZXJlJ3MgZHJtLWludGVsLWd0LW5leHQgcHVsbCByZXF1ZXN0Lgo+IAo+
IE1vc3Qgbm90YWJseSBpdCBoYXMgdGhlIHJld29ya2VkIERHMSB1QVBJIChiZWhpbmQgQ09ORklH
X0JST0tFTikKPiBhcyByZXF1ZXN0ZWQuIEltcG9ydGFudCBmaXggZm9yIEdpdGxhYiBpc3N1ZXMg
IzMyOTMgYW5kICMzNDUwIGFuZAo+IG9uZSBhbm90aGVyIGtlcm5lbCBjcmFzaC4gQWRkcyBtaXNz
aW5nIHdvcmthcm91bmRzIGZvciBHZW4xMSBhbmQKPiBHZW4xMi4gSGlkaW5nIG9mIG1vZHBhcmFt
cyBmb3IgY29tcGlsZWQtb3V0IGZlYXR1cmVzLiBDb252ZXJzaW9uCj4gdG8gdXNlIHRyeWxvY2sg
c2hyaW5raW5nIGZvciBCU1cgVlQtZCBhbmQgQlhULgo+IAo+IFRoZW4gdGhlcmUgYXJlIHRoZSB1
QVBJIGtlcm5lbGRvYyBpbXByb3ZlbWVudHMgYXMgcGFydCBvZiB0aGUgREcxCj4gdUFQSSByZXdv
cmsuIFVzdWFsIGFtb3VudCBzbWFsbGVyIGZpeGVzLCBjb2RlIHJlZmFjdG9yaW5nIGFuZAo+IGNs
ZWFudXBzIGFzIHByZXAgZm9yIHVwY29taW5nIHBhdGNoZXMuCgpBbmQgaW5jbHVkZXMgdGFnICd0
b3BpYy9pbnRlbC1nZW4tdG8tdmVyLTIwMjEtMDQtMTknIChidXQgdGhhdCBpcwphbHJlYWR5IG1l
cmdlZCB0byBkcm0tbmV4dCkuCgpSZWdhcmRzLCBKb29uYXMKCj4gUmVnYXJkcywgSm9vbmFzCj4g
Cj4gKioqCj4gCj4gZHJtLWludGVsLWd0LW5leHQtMjAyMS0wNS0yODoKPiAKPiBVQVBJIENoYW5n
ZXM6Cj4gLSBBZGQgcmV3b3JrZWQgdUFQSSBmb3IgREcxIGJlaGluZCBDT05GSUdfQlJPS0VOIChN
YXR0IEEsIEFiZGllbCkKPiAKPiBEcml2ZXIgQ2hhbmdlczoKPiAKPiAtIEZpeCBmb3IgR2l0bGFi
IGlzc3VlcyAjMzI5MyBhbmQgIzM0NTA6Cj4gICBBdm9pZCBrZXJuZWwgY3Jhc2ggb24gb2xkZXIg
TC1zaGFwZSBtZW1vcnkgbWFjaGluZXMKPiAKPiAtIEhpZGUgbW9kcGFyYW1zIGZvciBjb21waWxl
ZC1vdXQgZmVhdHVyZXMgKFR2cnRrbykKPiAtIEFkZCBXYV8xNDAxMDczMzE0MSAoVkRCb3ggU0ZD
IHJlc2V0KSBmb3IgR2VuMTErIChBZGl0eWEpCj4gLSBGaXggY3Jhc2ggaW4gYXV0b19yZXRpcmUg
YWN0aXZlIHJldGlyZSBjYWxsYmFjayBkdWUgdG8KPiAgIG1pc2FsaWdubWVudCAoU3RlcGhhbmUp
Cj4gLSBVc2UgdHJ5bG9jayBpbiBzaHJpbmtlciBmb3IgR0dUVCBvbiBCU1cgVlQtZCBhbmQgQlhU
IChNYWFydGVuKQo+IC0gRml4IG92ZXJsYXkgYWN0aXZlIHJldGlyZSBjYWxsYmFjayBhbGlnbm1l
bnQgKFR2cnRrbykKPiAtIEVsaW1pbmF0ZSBuZWVkIHRvIGFsaWduIGFjdGl2ZSByZXRpcmUgY2Fs
bGJhY2tzIChNYXR0IEEsIFZpbGxlLAo+ICAgRGFuaWVsKQo+IC0gUHJvZ3JhbSBGRl9NT0RFMiB0
dW5pbmcgdmFsdWUgZm9yIGFsbCBHZW4xMiBwbGF0Zm9ybXMgKENheikKPiAtIEFkZCBXYV8xNDAx
MTA2MDY0OSBmb3IgVEdMLFJLTCxERzEgYW5kIEFETFMgKFN3YXRoaSkKPiAtIENyZWF0ZSBzdG9s
ZW4gbWVtb3J5IHJlZ2lvbiBmcm9tIGxvY2FsIG1lbW9yeSBvbiBERzEgKENRKQo+IC0gUGxhY2Ug
UEQgaW4gTE1FTSBvbiBkR0ZYIChNYXR0IEEpCj4gLSBVc2UgV0Mgd2hlbiBkZWZhdWx0IHN0YXRl
IG9iamVjdCBpcyBhbGxvY2F0ZWQgaW4gTE1FTSAoVmVua2F0YSkKPiAtIERldGVybWluZSB0aGUg
Y29oZXJlbnQgbWFwIHR5cGUgYmFzZWQgb24gb2JqZWN0IGxvY2F0aW9uIChWZW5rYXRhKQo+IC0g
VXNlIGxtZW0gcGh5c2ljYWwgYWRkcmVzc2VzIGZvciBmYl9tbWFwKCkgb24gZGlzY3JldGUgKE1v
aGFtbWVkKQo+IC0gQnlwYXNzIGFwZXJ0dXJlIG9uIGZiZGV2IHdoZW4gTE1FTSBpcyBhdmFpbGFi
bGUgKEFudXNoYSkKPiAtIFJldHVybiBlcnJvciB2YWx1ZSB3aGVuIGRpc3BsYXlhYmxlIEJPIG5v
dCBpbiBMTUVNIGZvciBkR0ZYIChNb2hhbW1lZCkKPiAtIERvIHJlbGVhc2Uga2VybmVsIGNvbnRl
eHQgaWYgYnJlYWRjcnVtYiBtZWFzdXJlIGZhaWxzIChKYW51c3opCj4gLSBBcHBseSBXYV8yMjAx
MDI3MTAyMSBmb3IgYWxsIEdlbjExIHBsYXRmb3JtcyAoQ2F6KQo+IC0gRml4IHVubGlrZWx5IHJl
ZiBjb3VudCByYWNlIGluIGFybWluZyB0aGUgd2F0Y2hkb2cgdGltZXIgKFR2cnRrbykKPiAtIENo
ZWNrIGFjdHVhbCBSQzYgZW5hYmxlIHN0YXR1cyBpbiBQTVUgKFR2cnRrbykKPiAtIEZpeCBhIGRv
dWJsZSBmcmVlIGluIGdlbjhfcHJlYWxsb2NhdGVfdG9wX2xldmVsX3BkcCAoTHYpCj4gLSBSZW1v
dmUgZXJyb25lb3VzIGk5MTVfaXNfZ2d0dCBjaGVjayBmb3IKPiAgIEk5MTVfR0VNX09CSkVDVF9V
TkJJTkRfVk1fVFJZTE9DSyAoTWFhcnRlbikKPiAKPiAtIENvbnZlcnQgdUFQSSBoZWFkZXJzIHRv
IHJlYWwga2VybmVsZG9jIChNYXR0IEEpCj4gLSBDbGVhbiB1cCBrZXJuZWxkb2Mgd2FybmluZ3Mg
aGVhZGVycyAoTWF0dCBBLCBNYWFydGVuKQo+IC0gRmFpbCBkcml2ZXIgaWYgTE1FTSB0cmFpbmlu
ZyBmYWlsZWQgKE1hdHQgUikKPiAtIEF2b2lkIGRpdi1ieS16ZXJvIG9uIEdlbjIgKFZpbGxlKQo+
IC0gUmVhZCBDMERSQjMvQzFEUkIzIGFzIDE2IGJpdHMgYWdhaW4gYW5kIGFkZCBfQlcgc3VmZml4
IChWaWxsZSkKPiAtIFJlbW92ZSByZWZlcmVuY2UgdG8gc3RydWN0IGRybV9kZXZpY2UucGRldiAo
VGhvbWFzKQo+IC0gSW5jcmVhc2Ugc2VwYXJhdGlvbiBiZXR3ZWVuIEd1QyBhbmQgZXhlY2xpc3Rz
IGNvZGUgKENocmlzLCBNYXR0IEIpCj4gCj4gLSBVc2UgbWlnaHRfYWxsb2MoKSAoQmVybmFyZCkK
PiAtIFNwbGl0IERHRlhfRkVBVFVSRVMgZnJvbSBHRU4xMl9GRUFUVVJFUyAoTHVjYXMpCj4gLSBE
ZWR1cGxpY2F0ZSBXYV8yMjAxMDI3MTAyMSBwcm9ncmFtbWluZyBvbiAoSm9zZSkKPiAtIERyb3Ag
ZHVwbGljYXRlIFdhRGlzYWJsZTR4MlN1YnNwYW5PcHRpbWl6YXRpb246aHN3IChUdnJ0a28pCj4g
LSBTZWxmdGVzdCBpbXByb3ZlbWVudHMgKENocmlzLCBIc2luLVlpLCBUdnJ0a28pCj4gLSBTaHVm
ZmxlIGFyb3VuZCBpbml0X21lbW9yeV9yZWdpb24gZm9yIHN0b2xlbiAoTWF0dCkKPiAtIFR5cG8g
Zml4ZXMgKHdlbmdqaWFuZmVuZykKPiAKPiBUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29t
bWl0IDQyNTM5MGM1ZGNlNmRhNzY1NzgzODk2MjlkMTk1MTdmY2Q3OWM5NTk6Cj4gCj4gICBkcm0v
aTkxNTogc3BsaXQgZGdmeCBmZWF0dXJlcyBmcm9tIGdlbiAxMiAoMjAyMS0wNC0xNCAxMzowNTow
NiArMDMwMCkKPiAKPiBhcmUgYXZhaWxhYmxlIGluIHRoZSBHaXQgcmVwb3NpdG9yeSBhdDoKPiAK
PiAgIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2RybS9kcm0taW50ZWwgdGFncy9kcm0t
aW50ZWwtZ3QtbmV4dC0yMDIxLTA1LTI4Cj4gCj4gZm9yIHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVw
IHRvIDViMjZkNTdmZGI0OTljMjM2M2YzZDg5NWVmMDA4ZTczZWMwMmViOWI6Cj4gCj4gICBkcm0v
aTkxNTogQWRkIFdhXzE0MDEwNzMzMTQxICgyMDIxLTA1LTI3IDExOjA1OjA5IC0wNzAwKQo+IAo+
IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0KPiBVQVBJIENoYW5nZXM6Cj4gLSBBZGQgcmV3b3JrZWQgdUFQSSBmb3IgREcxIGJl
aGluZCBDT05GSUdfQlJPS0VOIChNYXR0IEEsIEFiZGllbCkKPiAKPiBEcml2ZXIgQ2hhbmdlczoK
PiAKPiAtIEZpeCBmb3IgR2l0bGFiIGlzc3VlcyAjMzI5MyBhbmQgIzM0NTA6Cj4gICBBdm9pZCBr
ZXJuZWwgY3Jhc2ggb24gb2xkZXIgTC1zaGFwZSBtZW1vcnkgbWFjaGluZXMKPiAKPiAtIEFkZCBX
YV8xNDAxMDczMzE0MSAoVkRCb3ggU0ZDIHJlc2V0KSBmb3IgR2VuMTErIChBZGl0eWEpCj4gLSBG
aXggY3Jhc2ggaW4gYXV0b19yZXRpcmUgYWN0aXZlIHJldGlyZSBjYWxsYmFjayBkdWUgdG8KPiAg
IG1pc2FsaWdubWVudCAoU3RlcGhhbmUpCj4gLSBGaXggb3ZlcmxheSBhY3RpdmUgcmV0aXJlIGNh
bGxiYWNrIGFsaWdubWVudCAoVHZydGtvKQo+IC0gRWxpbWluYXRlIG5lZWQgdG8gYWxpZ24gYWN0
aXZlIHJldGlyZSBjYWxsYmFja3MgKE1hdHQgQSwgVmlsbGUsCj4gICBEYW5pZWwpCj4gLSBQcm9n
cmFtIEZGX01PREUyIHR1bmluZyB2YWx1ZSBmb3IgYWxsIEdlbjEyIHBsYXRmb3JtcyAoQ2F6KQo+
IC0gQWRkIFdhXzE0MDExMDYwNjQ5IGZvciBUR0wsUktMLERHMSBhbmQgQURMUyAoU3dhdGhpKQo+
IC0gQ3JlYXRlIHN0b2xlbiBtZW1vcnkgcmVnaW9uIGZyb20gbG9jYWwgbWVtb3J5IG9uIERHMSAo
Q1EpCj4gLSBQbGFjZSBQRCBpbiBMTUVNIG9uIGRHRlggKE1hdHQgQSkKPiAtIFVzZSBXQyB3aGVu
IGRlZmF1bHQgc3RhdGUgb2JqZWN0IGlzIGFsbG9jYXRlZCBpbiBMTUVNIChWZW5rYXRhKQo+IC0g
RGV0ZXJtaW5lIHRoZSBjb2hlcmVudCBtYXAgdHlwZSBiYXNlZCBvbiBvYmplY3QgbG9jYXRpb24g
KFZlbmthdGEpCj4gLSBVc2UgbG1lbSBwaHlzaWNhbCBhZGRyZXNzZXMgZm9yIGZiX21tYXAoKSBv
biBkaXNjcmV0ZSAoTW9oYW1tZWQpCj4gLSBCeXBhc3MgYXBlcnR1cmUgb24gZmJkZXYgd2hlbiBM
TUVNIGlzIGF2YWlsYWJsZSAoQW51c2hhKQo+IC0gUmV0dXJuIGVycm9yIHZhbHVlIHdoZW4gZGlz
cGxheWFibGUgQk8gbm90IGluIExNRU0gZm9yIGRHRlggKE1vaGFtbWVkKQo+IC0gRG8gcmVsZWFz
ZSBrZXJuZWwgY29udGV4dCBpZiBicmVhZGNydW1iIG1lYXN1cmUgZmFpbHMgKEphbnVzeikKPiAt
IEhpZGUgbW9kcGFyYW1zIGZvciBjb21waWxlZC1vdXQgZmVhdHVyZXMgKFR2cnRrbykKPiAtIEFw
cGx5IFdhXzIyMDEwMjcxMDIxIGZvciBhbGwgR2VuMTEgcGxhdGZvcm1zIChDYXopCj4gLSBGaXgg
dW5saWtlbHkgcmVmIGNvdW50IHJhY2UgaW4gYXJtaW5nIHRoZSB3YXRjaGRvZyB0aW1lciAoVHZy
dGtvKQo+IC0gQ2hlY2sgYWN0dWFsIFJDNiBlbmFibGUgc3RhdHVzIGluIFBNVSAoVHZydGtvKQo+
IC0gRml4IGEgZG91YmxlIGZyZWUgaW4gZ2VuOF9wcmVhbGxvY2F0ZV90b3BfbGV2ZWxfcGRwIChM
dikKPiAtIFVzZSB0cnlsb2NrIGluIHNocmlua2VyIGZvciBHR1RUIG9uIEJTVyBWVC1kIGFuZCBC
WFQgKE1hYXJ0ZW4pCj4gLSBSZW1vdmUgZXJyb25lb3VzIGk5MTVfaXNfZ2d0dCBjaGVjayBmb3IK
PiAgIEk5MTVfR0VNX09CSkVDVF9VTkJJTkRfVk1fVFJZTE9DSyAoTWFhcnRlbikKPiAKPiAtIENv
bnZlcnQgdUFQSSBoZWFkZXJzIHRvIHJlYWwga2VybmVsZG9jIChNYXR0IEEpCj4gLSBDbGVhbiB1
cCBrZXJuZWxkb2Mgd2FybmluZ3MgaGVhZGVycyAoTWF0dCBBLCBNYWFydGVuKQo+IC0gRmFpbCBk
cml2ZXIgaWYgTE1FTSB0cmFpbmluZyBmYWlsZWQgKE1hdHQgUikKPiAtIEF2b2lkIGRpdi1ieS16
ZXJvIG9uIEdlbjIgKFZpbGxlKQo+IC0gUmVhZCBDMERSQjMvQzFEUkIzIGFzIDE2IGJpdHMgYWdh
aW4gYW5kIGFkZCBfQlcgc3VmZml4IChWaWxsZSkKPiAtIFJlbW92ZSByZWZlcmVuY2UgdG8gc3Ry
dWN0IGRybV9kZXZpY2UucGRldiAoVGhvbWFzKQo+IC0gSW5jcmVhc2Ugc2VwYXJhdGlvbiBiZXR3
ZWVuIEd1QyBhbmQgZXhlY2xpc3RzIGNvZGUgKENocmlzLCBNYXR0IEIpCj4gCj4gLSBVc2UgbWln
aHRfYWxsb2MoKSAoQmVybmFyZCkKPiAtIFNwbGl0IERHRlhfRkVBVFVSRVMgZnJvbSBHRU4xMl9G
RUFUVVJFUyAoTHVjYXMpCj4gLSBEZWR1cGxpY2F0ZSBXYV8yMjAxMDI3MTAyMSBwcm9ncmFtbWlu
ZyBvbiAoSm9zZSkKPiAtIERyb3AgZHVwbGljYXRlIFdhRGlzYWJsZTR4MlN1YnNwYW5PcHRpbWl6
YXRpb246aHN3IChUdnJ0a28pCj4gLSBTZWxmdGVzdCBpbXByb3ZlbWVudHMgKENocmlzLCBIc2lu
LVlpLCBUdnJ0a28pCj4gLSBTaHVmZmxlIGFyb3VuZCBpbml0X21lbW9yeV9yZWdpb24gZm9yIHN0
b2xlbiAoTWF0dCkKPiAtIFR5cG8gZml4ZXMgKHdlbmdqaWFuZmVuZykKPiAKPiAtLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4g
QWJkaWVsIEphbnVsZ3VlICgxKToKPiAgICAgICBkcm0vaTkxNS9xdWVyeTogRXhwb3NlIG1lbW9y
eSByZWdpb25zIHRocm91Z2ggdGhlIHF1ZXJ5IHVBUEkKPiAKPiBBZGl0eWEgU3dhcnVwICgxKToK
PiAgICAgICBkcm0vaTkxNTogQWRkIFdhXzE0MDEwNzMzMTQxCj4gCj4gQW51c2hhIFNyaXZhdHNh
ICgxKToKPiAgICAgICBkcm0vaTkxNS9sbWVtOiBCeXBhc3MgYXBlcnR1cmUgd2hlbiBsbWVtIGlz
IGF2YWlsYWJsZQo+IAo+IEJlcm5hcmQgWmhhbyAoMSk6Cj4gICAgICAgZHJtL2k5MTU6IFVzZSBt
aWdodF9hbGxvYygpCj4gCj4gQ1EgVGFuZyAoMik6Cj4gICAgICAgZHJtL2k5MTU6IENyZWF0ZSBz
dG9sZW4gbWVtb3J5IHJlZ2lvbiBmcm9tIGxvY2FsIG1lbW9yeQo+ICAgICAgIGRybS9pOTE1L3N0
b2xlbjogZW5mb3JjZSB0aGUgbWluX3BhZ2Vfc2l6ZSBjb250cmFjdAo+IAo+IENheiBZb2tveWFt
YSAoMik6Cj4gICAgICAgZHJtL2k5MTUvZ2VuMTI6IEFkZCByZWNvbW1lbmRlZCBoYXJkd2FyZSB0
dW5pbmcgdmFsdWUKPiAgICAgICBkcm0vaTkxNS9pY2w6IGFkZCBXYV8yMjAxMDI3MTAyMSBmb3Ig
YWxsIGdlbjExCj4gCj4gQ2hyaXMgV2lsc29uICg2KToKPiAgICAgICBkcm0vaTkxNS9zZWxmdGVz
dHM6IFNraXAgYXBlcnR1cmUgcmVtYXBwaW5nIHNlbGZ0ZXN0IHdoZXJlIHRoZXJlIGlzIG5vIGFw
ZXJ0dXJlCj4gICAgICAgZHJtL2k5MTUvc2VsZnRlc3RzOiBPbmx5IHF1ZXJ5IFJBUEwgZm9yIGlu
dGVncmF0ZWQgcG93ZXIgbWVhc3VyZW1lbnRzCj4gICAgICAgZHJtL2k5MTUvZ2VtOiBQaW4gdGhl
IEwtc2hhcGUgcXVpcmtlZCBvYmplY3QgYXMgdW5zaHJpbmthYmxlCj4gICAgICAgZHJtL2k5MTUv
Z3Q6IE1vdmUgZW5naW5lIHNldHVwIG91dCBvZiBzZXRfZGVmYXVsdF9zdWJtaXNzaW9uCj4gICAg
ICAgZHJtL2k5MTUvZ3Q6IE1vdmUgc3VibWlzc2lvbl9tZXRob2QgaW50byBpbnRlbF9ndAo+ICAg
ICAgIGRybS9pOTE1L2d0OiBNb3ZlIENTIGludGVycnVwdCBoYW5kbGVyIHRvIHRoZSBiYWNrZW5k
Cj4gCj4gSHNpbi1ZaSBXYW5nICgxKToKPiAgICAgICBkcm0vaTkxNS9zZWxmdGVzdHM6IFJlbmFt
ZSBwbV8gcHJlZml4ZWQgZnVuY3Rpb25zIG5hbWVzCj4gCj4gSmFudXN6IEtyenlzenRvZmlrICgx
KToKPiAgICAgICBkcm0vaTkxNS9ndDogRG8gcmVsZWFzZSBrZXJuZWwgY29udGV4dCBpZiBicmVh
ZGNydW1iIG1lYXN1cmUgZmFpbHMKPiAKPiBKb29uYXMgTGFodGluZW4gKDEpOgo+ICAgICAgIE1l
cmdlIHRhZyAndG9waWMvaW50ZWwtZ2VuLXRvLXZlci0yMDIxLTA0LTE5JyBvZiBnaXQ6Ly9hbm9u
Z2l0LmZyZWVkZXNrdG9wLm9yZy9kcm0vZHJtLWludGVsIGludG8gZHJtLWludGVsLWd0LW5leHQK
PiAKPiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphICgxKToKPiAgICAgICBkcm0vaTkxNTogTW92ZSBX
YV8xNjAxMTE2MzMzNyB0byBnZW4xMl9jdHhfd29ya2Fyb3VuZHNfaW5pdCgpCj4gCj4gTHYgWXVu
bG9uZyAoMSk6Cj4gICAgICAgZHJtL2k5MTUvZ3Q6IEZpeCBhIGRvdWJsZSBmcmVlIGluIGdlbjhf
cHJlYWxsb2NhdGVfdG9wX2xldmVsX3BkcAo+IAo+IE1hYXJ0ZW4gTGFua2hvcnN0ICg0KToKPiAg
ICAgICBkcm0vaTkxNTogRml4IGRvY2Jvb2sgZGVzY3JpcHRpb25zIGZvciBpOTE1X2dlbV9zaHJp
bmtlcgo+ICAgICAgIGRybS9pOTE1OiBGaXggZG9jYm9vayBkZXNjcmlwdGlvbnMgZm9yIGk5MTVf
Y21kX3BhcnNlcgo+ICAgICAgIGRybS9pOTE1OiBVc2UgdHJ5bG9jayBpbiBzaHJpbmtlciBmb3Ig
Z2d0dCBvbiBic3cgdnQtZCBhbmQgYnh0LCB2Mi4KPiAgICAgICBkcm0vaTkxNTogUmVtb3ZlIGVy
cm9uZW91cyBpOTE1X2lzX2dndHQgY2hlY2sgZm9yIEk5MTVfR0VNX09CSkVDVF9VTkJJTkRfVk1f
VFJZTE9DSwo+IAo+IE1hdHQgUm9wZXIgKDEpOgo+ICAgICAgIGRybS9pOTE1L2xtZW06IEZhaWwg
ZHJpdmVyIGluaXQgaWYgTE1FTSB0cmFpbmluZyBmYWlsZWQKPiAKPiBNYXR0aGV3IEF1bGQgKDE5
KToKPiAgICAgICBkcm0vaTkxNS91YXBpOiBmaXgga2VybmVsIGRvYyB3YXJuaW5ncwo+ICAgICAg
IGRybS9pOTE1L3VhcGk6IGNvbnZlcnQgaTkxNV91c2VyX2V4dGVuc2lvbiB0byBrZXJuZWwgZG9j
Cj4gICAgICAgZHJtL2k5MTUvdWFwaTogY29udmVydCBpOTE1X3F1ZXJ5IGFuZCBmcmllbmQgdG8g
a2VybmVsIGRvYwo+ICAgICAgIGRybS9kb2M6IGFkZCBzZWN0aW9uIGZvciBkcml2ZXIgdUFQSQo+
ICAgICAgIGRybS9pOTE1L3N0b2xlbjogdHJlYXQgc3RvbGVuIGxvY2FsIGFzIG5vcm1hbCBsb2Nh
bCBtZW1vcnkKPiAgICAgICBkcm0vaTkxNS9zdG9sZW46IGFjdHVhbGx5IG1hcmsgYXMgY29udGln
dW91cwo+ICAgICAgIGRybS9pOTE1L2d0dDogbWFwIHRoZSBQRCB1cCBmcm9udAo+ICAgICAgIGRy
bS9pOTE1L2d0dC9kZ2Z4OiBwbGFjZSB0aGUgUEQgaW4gTE1FTQo+ICAgICAgIGRybS9kb2MvcmZj
OiBpOTE1IERHMSB1QVBJCj4gICAgICAgZHJtL2k5MTU6IG1hcmsgc3RvbGVuIGFzIHByaXZhdGUK
PiAgICAgICBkcm0vaTkxNTogcmV3b3JrIGdlbV9jcmVhdGUgZmxvdyBmb3IgdXBjb21pbmcgZXh0
ZW5zaW9ucwo+ICAgICAgIGRybS9pOTE1L3VhcGk6IGludHJvZHVjZSBkcm1faTkxNV9nZW1fY3Jl
YXRlX2V4dAo+ICAgICAgIGRybS9pOTE1L3VhcGk6IGltcGxlbWVudCBvYmplY3QgcGxhY2VtZW50
IGV4dGVuc2lvbgo+ICAgICAgIGRybS9pOTE1L2xtZW06IHN1cHBvcnQgb3B0aW9uYWwgQ1BVIGNs
ZWFyaW5nIGZvciBzcGVjaWFsIGludGVybmFsIHVzZQo+ICAgICAgIGRybS9pOTE1L2dlbTogY2xl
YXIgdXNlcnNwYWNlIGJ1ZmZlcnMgZm9yIExNRU0KPiAgICAgICBkcm0vaTkxNS9nZW06IGhpZGUg
bmV3IHVBUEkgYmVoaW5kIENPTkZJR19CUk9LRU4KPiAgICAgICBkcm0vaTkxNTogZHJvcCB0aGUg
X19pOTE1X2FjdGl2ZV9jYWxsIHBvaW50ZXIgcGFja2luZwo+ICAgICAgIGRybS9pOTE1L3N0b2xl
bjogc2h1ZmZsZSBhcm91bmQgaW5pdF9tZW1vcnlfcmVnaW9uCj4gICAgICAgZHJtL2RvYy9yZmM6
IGRyb3AgdGhlIGk5MTVfZ2VtX2xtZW0uaCBoZWFkZXIKPiAKPiBNb2hhbW1lZCBLaGFqYXBhc2hh
ICgyKToKPiAgICAgICBkcm0vaTkxNS9mYmRldjogVXNlIGxtZW0gcGh5c2ljYWwgYWRkcmVzc2Vz
IGZvciBmYl9tbWFwKCkgb24gZGlzY3JldGUKPiAgICAgICBkcm0vaTkxNTogUmV0dXJuIGVycm9y
IHZhbHVlIHdoZW4gYm8gbm90IGluIExNRU0gZm9yIGRpc2NyZXRlCj4gCj4gU3TDqXBoYW5lIE1h
cmNoZXNpbiAoMSk6Cj4gICAgICAgZHJtL2k5MTU6IEZpeCBjcmFzaCBpbiBhdXRvX3JldGlyZQo+
IAo+IFN3YXRoaSBEaGFuYXZhbnRocmkgKDEpOgo+ICAgICAgIGRybS9pOTE1OiBBZGQgV2FfMTQw
MTEwNjA2NDkKPiAKPiBUaG9tYXMgWmltbWVybWFubiAoMSk6Cj4gICAgICAgZHJtL2k5MTUvZ2Vt
OiBSZW1vdmUgcmVmZXJlbmNlIHRvIHN0cnVjdCBkcm1fZGV2aWNlLnBkZXYKPiAKPiBUdnJ0a28g
VXJzdWxpbiAoNik6Cj4gICAgICAgZHJtL2k5MTU6IFRha2UgcmVxdWVzdCByZWZlcmVuY2UgYmVm
b3JlIGFybWluZyB0aGUgd2F0Y2hkb2cgdGltZXIKPiAgICAgICBkcm0vaTkxNS9wbXU6IENoZWNr
IGFjdHVhbCBSQzYgc3RhdHVzCj4gICAgICAgZHJtL2k5MTUvb3ZlcmxheTogRml4IGFjdGl2ZSBy
ZXRpcmUgY2FsbGJhY2sgYWxpZ25tZW50Cj4gICAgICAgZHJtL2k5MTUvc2VsZnRlc3RzOiBGaXgg
YWN0aXZlIHJldGlyZSBjYWxsYmFjayBhbGlnbm1lbnQKPiAgICAgICBkcm0vaTkxNTogRHJvcCBk
dXBsaWNhdGUgV2FEaXNhYmxlNHgyU3Vic3Bhbk9wdGltaXphdGlvbjpoc3cKPiAgICAgICBkcm0v
aTkxNS9wYXJhbXM6IEFsaWduIHZpc2liaWxpdHkgb2YgZGV2aWNlIGxldmVsIGFuZCBnbG9iYWwg
bW9kcGFyYW1zCj4gCj4gVmVua2F0YSBSYW1hbmEgTmF5YW5hICgxKToKPiAgICAgICBkcm0vaTkx
NS9kZzE6IEZpeCBtYXBwaW5nIHR5cGUgZm9yIGRlZmF1bHQgc3RhdGUgb2JqZWN0Cj4gCj4gVmVu
a2F0YSBTYW5kZWVwIERoYW5hbGFrb3RhICgxKToKPiAgICAgICBkcm0vaTkxNTogVXBkYXRlIHRo
ZSBoZWxwZXIgdG8gc2V0IGNvcnJlY3QgbWFwcGluZwo+IAo+IFZpbGxlIFN5cmrDpGzDpCAoMyk6
Cj4gICAgICAgZHJtL2k5MTU6IEF2b2lkIGRpdi1ieS16ZXJvIG9uIGdlbjIKPiAgICAgICBkcm0v
aTkxNTogUmVhZCBDMERSQjMvQzFEUkIzIGFzIDE2IGJpdHMgYWdhaW4KPiAgICAgICBkcm0vaTkx
NTogR2l2ZSBDMERSQjMvQzFEUkIzIGEgX0JXIHN1ZmZpeAo+IAo+IHdlbmdqaWFuZmVuZyAoMSk6
Cj4gICAgICAgZHJtL2k5MTUvZ3Q6IGZpeCB0eXBvIGlzc3VlCj4gCj4gIERvY3VtZW50YXRpb24v
Z3B1L2RyaXZlci11YXBpLnJzdCAgICAgICAgICAgICAgICAgIHwgICA4ICsKPiAgRG9jdW1lbnRh
dGlvbi9ncHUvaW5kZXgucnN0ICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDEgKwo+ICBEb2N1
bWVudGF0aW9uL2dwdS9yZmMvaTkxNV9nZW1fbG1lbS5yc3QgICAgICAgICAgICB8IDEzMSArKysr
KysrCj4gIERvY3VtZW50YXRpb24vZ3B1L3JmYy9pbmRleC5yc3QgICAgICAgICAgICAgICAgICAg
IHwgICA0ICsKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
ICAgICAgfCAgMTAgKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2
LmMgICAgICAgICB8ICA1MSArKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9mcm9udGJ1ZmZlci5jICAgfCAgIDQgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9vdmVybGF5LmMgICAgICAgfCAgIDUgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX2NvbnRleHQuYyAgICAgICAgfCAgIDMgKy0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2NyZWF0ZS5jICAgICAgICAgfCAzNDUgKysrKysrKysrKysrKysr
Ky0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9pb2N0bHMuaCAgICAgICAg
IHwgICAyICsKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2xtZW0uYyAgICAg
ICAgICAgfCAgMjAgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2xtZW0u
aCAgICAgICAgICAgfCAgIDUgKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
bW1hbi5jICAgICAgICAgICB8ICAgMiArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fb2JqZWN0LmMgICAgICAgICB8ICAgMyArCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaCAgIHwgIDE0ICstCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9wYWdlcy5jICAgICAgICAgIHwgICAyICsKPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3JlZ2lvbi5jICAgICAgICAgfCAgMjIgKysKPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3Nocmlua2VyLmMgICAgICAgfCAgMTQgKy0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3N0b2xlbi5jICAgICAgICAgfCAxNTkg
KysrKysrKy0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zdG9sZW4uaCAg
ICAgICAgIHwgICAzICstCj4gIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dl
bV9jb250ZXh0LmMgIHwgIDExICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVz
dHMvaTkxNV9nZW1fbW1hbi5jIHwgIDI2ICsrCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2dl
bjZfcHBndHQuYyAgICAgICAgICAgICAgIHwgIDEzICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2dlbjhfcHBndHQuYyAgICAgICAgICAgICAgIHwgIDMyICstCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2NvbnRleHQuYyAgICAgICAgICAgIHwgICAzICstCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZS5oICAgICAgICAgICAgIHwgICA4ICstCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jICAgICAgICAgIHwgIDIxICst
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5jICAgICAgICAgIHwg
ICAyICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oICAg
ICAgIHwgIDE0ICstCj4gIC4uLi9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZXhlY2xpc3RzX3N1Ym1p
c3Npb24uYyAgIHwgIDk1ICsrKy0tCj4gIC4uLi9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZXhlY2xp
c3RzX3N1Ym1pc3Npb24uaCAgIHwgICAzIC0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZ2d0dC5jICAgICAgICAgICAgICAgfCAgMTAgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZ2d0dF9mZW5jaW5nLmMgICAgICAgfCAgIDYgKy0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZ3RfYnVmZmVyX3Bvb2wuYyAgICAgfCAgIDMgKy0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfaXJxLmMgICAgICAgICAgICAgfCAgODIgKystLS0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfaXJxLmggICAgICAgICAgICAgfCAgMjMg
KysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaCAgICAgICAgICAg
fCAgIDcgKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndHQuYyAgICAgICAgICAg
ICAgICB8ICA5MSArKystLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndHQuaCAg
ICAgICAgICAgICAgICB8ICAxMiArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9s
cmMuYyAgICAgICAgICAgICAgICB8ICAgNCArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9wcGd0dC5jICAgICAgICAgICAgICB8ICAgNyArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9yZXNldC5jICAgICAgICAgICAgICB8IDIwMSArKysrKysrLS0tLQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nLmMgICAgICAgICAgICAgICB8ICAxMSArLQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24uYyAgICB8ICAx
MiArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ycHMuYyAgICAgICAgICAgICAg
ICB8ICAgMiArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90aW1lbGluZS5jICAg
ICAgICAgICB8ICAgNCArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJv
dW5kcy5jICAgICAgICB8IDEwMCArKysrLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvbW9j
a19lbmdpbmUuYyAgICAgICAgICAgICAgfCAgIDIgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3Qvc2VsZnRlc3RfY29udGV4dC5jICAgICAgICAgfCAgIDMgKy0KPiAgLi4uL2dwdS9kcm0vaTkx
NS9ndC9zZWxmdGVzdF9lbmdpbmVfaGVhcnRiZWF0LmMgICAgfCAgIDIgKy0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZXhlY2xpc3RzLmMgICAgICAgfCAgIDIgKy0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfaGFuZ2NoZWNrLmMgICAgICAgfCAgIDQgKy0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfbHJjLmMgICAgICAgICAgICAgfCAg
IDQgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfcmM2LmMgICAgICAgICAg
ICAgfCAgMzIgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfcmluZ19zdWJt
aXNzaW9uLmMgfCAgIDIgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfcnBz
LmMgICAgICAgICAgICAgfCAgIDYgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2htZW1f
dXRpbHMuYyAgICAgICAgICAgICAgfCAgIDQgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfZ3VjLmMgICAgICAgICAgICAgfCAgIDQgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYyAgfCAgNjQgKystLQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5oICB8ICAgMSAtCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Yy5jICAgICAgICAgICAgIHwgICA0ICstCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMgICAgICAgICAgICAgICAgIHwgIDEx
ICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmggICAgICAgICAgICAgICAg
IHwgIDExICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlX3R5cGVzLmggICAg
ICAgICAgIHwgICA1IC0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9jbWRfcGFyc2VyLmMg
ICAgICAgICAgICAgfCAgMTggKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2Zz
LmMgICAgICAgICAgICAgICAgfCAgIDQgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuYyAgICAgICAgICAgICAgICAgICAgfCAgIDEgKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5oICAgICAgICAgICAgICAgICAgICB8ICAyOSArLQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbS5jICAgICAgICAgICAgICAgICAgICB8ICAyNSArLQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2lycS5jICAgICAgICAgICAgICAgICAgICB8ICAxMCArLQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oICAgICAgICAgICAgICAgICB8ICAgOCArLQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jICAgICAgICAgICAgICAgICAgICB8ICAg
MiArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyAgICAgICAgICAgICAgICAg
ICB8ICAxMCArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jICAgICAgICAgICAg
ICAgICAgICB8ICAgNCArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3F1ZXJ5LmMgICAg
ICAgICAgICAgICAgICB8ICA2MiArKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmggICAgICAgICAgICAgICAgICAgIHwgIDE3ICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVxdWVzdC5jICAgICAgICAgICAgICAgIHwgICA1ICstCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfdm1hLmMgICAgICAgICAgICAgICAgICAgIHwgIDMxICstCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uYyAgICAgICAgIHwgIDI5ICstCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uaCAgICAgICAgIHwgIDE4ICstCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5jICAgICAgICAgICAgICAgIHwgIDEy
ICsKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfYWN0aXZlLmMgICAgICAg
fCAgIDIgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2VtLmMgICAg
ICAgICAgfCAgMjAgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2Vt
X2d0dC5jICAgICAgfCAgMTAgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5
MTVfcGVyZi5jICAgICAgICAgfCAgIDMgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRl
c3RzL2k5MTVfdm1hLmMgICAgICAgICAgfCAgIDMgKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9z
ZWxmdGVzdHMvaWd0X3NwaW5uZXIuYyAgICAgICB8ICAgNCArLQo+ICAuLi4vZ3B1L2RybS9pOTE1
L3NlbGZ0ZXN0cy9pbnRlbF9tZW1vcnlfcmVnaW9uLmMgICB8ICA4NyArKysrLQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbGlicmFwbC5jICAgICAgICAgICB8ICAxMCArCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9saWJyYXBsLmggICAgICAgICAgIHwgICA0ICsK
PiAgaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oICAgICAgICAgICAgICAgICAgICAgICAgfCAz
OTMgKysrKysrKysrKysrKysrKysrKy0tCj4gIDkyIGZpbGVzIGNoYW5nZWQsIDIwMTggaW5zZXJ0
aW9ucygrKSwgNTc1IGRlbGV0aW9ucygtKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRh
dGlvbi9ncHUvZHJpdmVyLXVhcGkucnN0Cj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0
aW9uL2dwdS9yZmMvaTkxNV9nZW1fbG1lbS5yc3QKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
